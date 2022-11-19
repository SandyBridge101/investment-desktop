import 'package:flutter/material.dart';
import 'package:workshopappsinvestment/l10n/string_hardcoded.dart';

import '../ui/views/startup/startup_view.dart';
import '../ui/views/watchlist/watchlist_view.dart';
import '../ui/views/cookies_policy/cookiespolicy_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) => 'My Stock Plug'.hardcoded,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: const WatchlistView(),
    );
  }
}
