part of 'pages.dart';
/*
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 130,
              height: 136,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 70,
                bottom: 16,
              ),
              child: Text(
                'New Experience',
                style: blackTextFont.copyWith(
                  fontSize: 20,
                ),
              ),
            ),
            Text(
              'Watch new movie much\neasier than any before',
              style: greyTextFont.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 70,
                bottom: 20,
              ),
              width: 250,
              height: 45,
              child: ElevatedButton(
                child: Text(
                  'Get Started',
                  style: whiteTextFont.copyWith(
                    fontSize: 16,
                  ),
                ),
                onPressed: () {
                  context
                      .read<PageBloc>()
                      .add(GoToRegistrationPage(RegistrationData()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(mainColor),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: greyTextFont.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<PageBloc>().add(GoToLoginPage());
                  },
                  child: Text(
                    'Sign In',
                    style: purpleTextFont,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
*/