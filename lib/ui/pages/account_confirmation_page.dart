part of 'pages.dart';

class AccountConfirmationPage extends StatefulWidget {
  final RegistrationData registrationData;

  AccountConfirmationPage(this.registrationData);

  @override
  _AccountConfirmationPageState createState() =>
      _AccountConfirmationPageState();
}

class _AccountConfirmationPageState extends State<AccountConfirmationPage> {
  bool isSignInUp = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context
            .read<PageBloc>()
            .add(GoToPreferencePage(widget.registrationData));
        return;
      },
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          color: Colors.white,
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 90),
                    height: 56,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: () {
                              context.read<PageBloc>().add(
                                  GoToPreferencePage(widget.registrationData));
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Confirm\nNew Account',
                            style: blackTextFont.copyWith(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: (widget.registrationData.profileImage == null)
                            ? AssetImage('assets/user_pic.png')
                            : FileImage(widget.registrationData.profileImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'Welcome',
                    style: blackTextFont.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    '${widget.registrationData.name}',
                    textAlign: TextAlign.center,
                    style: blackTextFont.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 110,
                  ),
                  (isSignInUp)
                      ? SpinKitFadingCircle(
                          color: Color(0xFF3E9D9D),
                          size: 45,
                        )
                      : SizedBox(
                          height: 45,
                          width: 250,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF3E9D9D)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                            ),
                            child: Text(
                              'Create My Account',
                              style: whiteTextFont.copyWith(fontSize: 16),
                            ),
                            onPressed: () async {
                              setState(() {
                                isSignInUp = true;
                              });

                              imageFileToUpload =
                                  widget.registrationData.profileImage;

                              SignInSignUpResult result =
                                  await AuthServices.signUp(
                                      widget.registrationData.email,
                                      widget.registrationData.password,
                                      widget.registrationData.name,
                                      widget.registrationData.selectedGenres,
                                      widget.registrationData.selectedLang);

                              if (result == null) {
                                setState(() {
                                  isSignInUp = false;
                                });

                                Flushbar(
                                  duration: Duration(milliseconds: 1500),
                                  flushbarPosition: FlushbarPosition.TOP,
                                  message: result.message,
                                  backgroundColor: Color(0xFFFF5C83),
                                )..show(context);
                              }
                            },
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
