part of 'pages.dart';

class TicketPage extends StatefulWidget {
  final bool isExpiredTicket;

  TicketPage({this.isExpiredTicket = false});

  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  bool isExpiredTicket;

  @override
  void initState() {
    super.initState();
    isExpiredTicket = widget.isExpiredTicket;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // CONTENT
          BlocBuilder<TicketBloc, TicketState>(
            builder: (_, ticketState) => Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: TicketViewer(isExpiredTicket
                  ? ticketState.tickets
                      .where((ticket) => ticket.time.isBefore(DateTime.now()))
                      .toList()
                  : ticketState.tickets
                      .where((ticket) => !ticket.time.isBefore(DateTime.now()))
                      .toList()),
            ),
          ),
          // HEADER
          Container(
            height: 113,
            color: accentColor1,
          ),
          SafeArea(
            child: ClipPath(
              clipper: HeaderClipper(),
              child: Container(
                height: 113,
                color: accentColor1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 24, bottom: 32),
                      child: Text(
                        'My Tickets',
                        style: whiteTextFont.copyWith(fontSize: 20),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isExpiredTicket = !isExpiredTicket;
                                });
                              },
                              child: Text(
                                'Newest',
                                style: whiteTextFont.copyWith(
                                  fontSize: 16,
                                  color: !isExpiredTicket
                                      ? Colors.white
                                      : Color(0xFF6F678E),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 4,
                              width: MediaQuery.of(context).size.width * 0.5,
                              color: !isExpiredTicket
                                  ? accentColor2
                                  : Colors.transparent,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isExpiredTicket = !isExpiredTicket;
                                });
                              },
                              child: Text(
                                'Oldest',
                                style: whiteTextFont.copyWith(
                                  fontSize: 16,
                                  color: isExpiredTicket
                                      ? Colors.white
                                      : Color(0xFF6F678E),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 4,
                              width: MediaQuery.of(context).size.width * 0.5,
                              color: isExpiredTicket
                                  ? accentColor2
                                  : Colors.transparent,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(0, size.height, 20, size.height);
    path.lineTo(size.width - 20, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 20);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class TicketViewer extends StatelessWidget {
  final List<Ticket> tickets;

  TicketViewer(this.tickets);

  @override
  Widget build(BuildContext context) {
    var sortedTickets = tickets;
    sortedTickets
        .sort((ticket1, ticket2) => ticket1.time.compareTo(ticket2.time));

    return ListView.builder(
      itemCount: sortedTickets.length,
      itemBuilder: (_, index) => GestureDetector(
        onTap: () {
          context
              .read<PageBloc>()
              .add(GoToDetailTicketPage(sortedTickets[index]));
        },
        child: Container(
          margin: EdgeInsets.only(top: index == 0 ? 133 : 20),
          child: Row(
            children: [
              Container(
                width: 70,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(imageBaseURL +
                        'w500' +
                        sortedTickets[index].movieDetail.posterPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width -
                    2 * defaultMargin -
                    70 -
                    16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sortedTickets[index].movieDetail.title,
                      style: blackTextFont.copyWith(fontSize: 18),
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      sortedTickets[index].movieDetail.genresAndLanguage,
                      style: greyTextFont.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      sortedTickets[index].theater.name,
                      style: greyTextFont.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
