part of 'pages.dart';
/*
class SuccessPage extends StatelessWidget {
  final Ticket ticket;
  final FlutixTransaction transaction;

  SuccessPage(this.ticket, this.transaction);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return;
      },
      child: Scaffold(
        body: FutureBuilder(
          future: ticket != null
              ? processingTicketOrder(context)
              : processingTopUp(context),
          builder: (_, snapshot) => (snapshot.connectionState ==
                  ConnectionState.done)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.only(bottom: 70),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ticket == null
                              ? 'assets/top_up_done.png'
                              : 'assets/ticket_done.png'),
                        ),
                      ),
                    ),
                    Text(
                      (ticket == null) ? 'Emm Yummy!' : 'Happy Watching!',
                      style: blackTextFont.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      (ticket == null)
                          ? 'You have successfully\ntop up the wallet'
                          : 'You have successfully\nbought the ticket',
                      textAlign: TextAlign.center,
                      style: blackTextFont.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 45,
                      margin: EdgeInsets.only(top: 70, bottom: 20),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(0),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(mainColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                        ),
                        child: Text(
                          (ticket == null) ? 'My Wallet' : 'My Tickets',
                          style: whiteTextFont.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        onPressed: () {
                          if (ticket == null) {
                            context
                                .read<PageBloc>()
                                .add(GoToWalletPage(GoToMainPage()));
                          } else {
                            context
                                .read<PageBloc>()
                                .add(GoToMainPage(bottomNavBarIndex: 1));
                          }
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Discover new movie? ',
                          style: greyTextFont.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.read<PageBloc>().add(GoToMainPage());
                          },
                          child: Text(
                            'Back to home',
                            style: purpleTextFont,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : SpinKitFadingCircle(
                  size: 50,
                  color: mainColor,
                ),
        ),
      ),
    );
  }

  Future<void> processingTicketOrder(BuildContext context) async {
    context.read<UserBloc>().add(Purchase(ticket.totalPrice));
    context.read<TicketBloc>().add(BuyTicket(ticket, transaction.userID));

    await FlutixTransactionServices.saveTransaction(transaction);
  }

  Future<void> processingTopUp(BuildContext context) async {
    context.read<UserBloc>().add(TopUp(transaction.amount));

    await FlutixTransactionServices.saveTransaction(transaction);
  }
}
*/