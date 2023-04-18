part of 'pages.dart';
/*
class WalletPage extends StatelessWidget {
  final PageEvent pageEvent;

  WalletPage(this.pageEvent);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<PageBloc>().add(pageEvent);
        return;
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: accentColor1,
            ),
            SafeArea(
              child: Container(
                color: Colors.white,
              ),
            ),
            // CONTENT
            SafeArea(
              child: Container(
                margin: EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 0),
                child: ListView(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: GestureDetector(
                            onTap: () {
                              context.read<PageBloc>().add(pageEvent);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        BlocBuilder<UserBloc, UserState>(
                          builder: (_, userState) => Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'My Wallet',
                                style: blackTextFont.copyWith(fontSize: 20),
                              ),
                              // ID CARD
                              Container(
                                height: 185,
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(vertical: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xFF382A74),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 10,
                                      spreadRadius: 0,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  children: [
                                    ClipPath(
                                      clipper: CardReflectionClipper(),
                                      child: Container(
                                        height: 185,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            end: Alignment.topLeft,
                                            colors: [
                                              Colors.white.withOpacity(0.1),
                                              Colors.white.withOpacity(0),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: 18,
                                                height: 18,
                                                margin:
                                                    EdgeInsets.only(right: 4),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xFFFFF2CB),
                                                ),
                                              ),
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: accentColor2,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            NumberFormat.currency(
                                              locale: 'id_ID',
                                              symbol: 'IDR ',
                                              decimalDigits: 0,
                                            ).format((userState as UserLoaded)
                                                .user
                                                .balance),
                                            style: whiteNumberFont.copyWith(
                                              fontSize: 28,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Card Holder',
                                                    style:
                                                        whiteTextFont.copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        (userState
                                                                as UserLoaded)
                                                            .user
                                                            .name,
                                                        style: whiteTextFont
                                                            .copyWith(
                                                                fontSize: 12),
                                                      ),
                                                      SizedBox(
                                                        width: 4,
                                                      ),
                                                      SizedBox(
                                                        height: 14,
                                                        width: 14,
                                                        child: Image.asset(
                                                            'assets/ic_check.png'),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Card ID',
                                                    style:
                                                        whiteTextFont.copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        (userState
                                                                as UserLoaded)
                                                            .user
                                                            .id
                                                            .substring(0, 10)
                                                            .toUpperCase(),
                                                        style: whiteNumberFont
                                                            .copyWith(
                                                                fontSize: 12),
                                                      ),
                                                      SizedBox(
                                                        width: 4,
                                                      ),
                                                      SizedBox(
                                                        height: 14,
                                                        width: 14,
                                                        child: Image.asset(
                                                            'assets/ic_check.png'),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Recent Transaction',
                                  style: blackTextFont,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              FutureBuilder(
                                future:
                                    FlutixTransactionServices.getTransaction(
                                        (userState as UserLoaded).user.id),
                                builder: (_, snapshot) {
                                  if (snapshot.hasData) {
                                    return generateTransactionList(
                                        snapshot.data,
                                        MediaQuery.of(context).size.width -
                                            2 * defaultMargin);
                                  } else {
                                    return SpinKitFadingCircle(
                                      size: 50,
                                      color: mainColor,
                                    );
                                  }
                                },
                              ),
                              SizedBox(
                                height: 75,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // BUTTON
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 250,
                height: 46,
                margin: EdgeInsets.only(bottom: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(mainColor),
                  ),
                  child: Text(
                    'Top Up My Wallet',
                    style: whiteTextFont.copyWith(fontSize: 16),
                  ),
                  onPressed: () {
                    context
                        .read<PageBloc>()
                        .add(GoToTopUpPage(GoToWalletPage(pageEvent)));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column generateTransactionList(
      List<FlutixTransaction> transactions, double width) {
    transactions.sort((transaction1, transaction2) =>
        transaction2.time.compareTo(transaction1.time));

    return Column(
      children: transactions
          .map((transaction) => Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: TransactionCard(transaction, width),
              ))
          .toList(),
    );
  }
}

class CardReflectionClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 15);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
*/