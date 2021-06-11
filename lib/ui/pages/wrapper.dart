part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    auth.User firebaseUser = Provider.of<auth.User>(context);

    if (firebaseUser == null) {
      if (!(prevPageEvent is GoToSplashPage)) {
        prevPageEvent = GoToSplashPage();
        context.read<PageBloc>().add(prevPageEvent);
      }
    } else {
      if (!(prevPageEvent is GoToMainPage)) {
        context.read<UserBloc>().add(LoadUser(firebaseUser.uid));
        context.read<TicketBloc>().add(GetTickets(firebaseUser.uid));

        prevPageEvent = GoToMainPage();
        context.read<PageBloc>().add(prevPageEvent);
      }
    }

    return BlocBuilder<PageBloc, PageState>(
      builder: (_, pageState) => (pageState is OnSplashPage)
          ? SplashPage()
          : (pageState is OnLoginPage)
              ? SignInPage()
              : (pageState is OnRegistrationPage)
                  ? SignUpPage(pageState.registrationData)
                  : (pageState is OnPreferencePage)
                      ? PreferencePage(pageState.registrationData)
                      : (pageState is OnAccountConfirmationPage)
                          ? AccountConfirmationPage(pageState.registrationData)
                          : (pageState is OnMovieDetailPage)
                              ? MovieDetailPage(pageState.movie)
                              : (pageState is OnSelectSchedulePage)
                                  ? SelectSchedulePage(pageState.movieDetail)
                                  : (pageState is OnSelectSeatPage)
                                      ? SelectSeatPage(pageState.ticket)
                                      : (pageState is OnCheckoutPage)
                                          ? CheckoutPage(pageState.ticket)
                                          : (pageState is OnSuccessPage)
                                              ? SuccessPage(pageState.ticket,
                                                  pageState.transaction)
                                              : (pageState
                                                      is OnDetailTicketPage)
                                                  ? TicketDetailPage(
                                                      pageState.ticket)
                                                  : (pageState is OnProfilePage)
                                                      ? ProfilePage()
                                                      : (pageState
                                                              is OnTopUpPage)
                                                          ? TopUpPage(pageState
                                                              .pageEvent)
                                                          : (pageState
                                                                  is OnWalletPage)
                                                              ? WalletPage(
                                                                  pageState
                                                                      .pageEvent)
                                                              : (pageState
                                                                      is OnEditProfilePage)
                                                                  ? EditProfilePage(
                                                                      pageState
                                                                          .user)
                                                                  : (pageState
                                                                          is OnMainPage)
                                                                      ? MainPage(
                                                                          bottomNavBarIndex:
                                                                              pageState.bottomNavBarIndex,
                                                                          isExpired:
                                                                              pageState.isExpired,
                                                                        )
                                                                      : Container(),
    );
  }
}
