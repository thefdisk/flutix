import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

import 'firebase_options.dart';
import 'injection.dart';
import 'presentation/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  await dotenv.load(fileName: '.env');

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  configureDependencies(kReleaseMode ? Environment.prod : Environment.dev);

  runApp(const AppWidget());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StreamProvider.value(
//       value: AuthServices.userStream,
//       child: MultiBlocProvider(
//         providers: [
//           BlocProvider(create: (_) => PageBloc()),
//           BlocProvider(create: (_) => UserBloc()),
//           BlocProvider(create: (_) => ThemeBloc()),
//           BlocProvider(create: (_) => MovieBloc()..add(FetchMovies())),
//           BlocProvider(create: (_) => TicketBloc()),
//         ],
//         child: BlocBuilder<ThemeBloc, ThemeState>(
//           builder: (_, themeState) {
//             return MaterialApp(
//               theme: themeState.themeData,
//               debugShowCheckedModeBanner: false,
//               home: Wrapper(),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
