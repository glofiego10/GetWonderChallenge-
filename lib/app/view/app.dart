import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:my_app/app/routes/auto_route.gr.dart';
import 'package:my_app/auth/bloc/bloc_page_auth.dart';
import 'package:my_app/home/bloc/bloc_page_home.dart';
import 'package:my_app/l10n/l10n.dart';
import 'package:repo_api/repo_api.dart';
import 'package:repo_auth/repo_auth.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => RAuth(),
        ),
        RepositoryProvider(
          create: (context) => RepoApi(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BlocPageAuth(repoAuth: context.read<RAuth>()),
          ),
          BlocProvider(
            create: (context) => BlocPageHome(repoApi: context.read<RepoApi>()),
          ),
        ],
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _appRouter = AppRouter();

  final isLogged = Hive.box<bool>('Login');

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerDelegate: _appRouter.delegate(
        initialRoutes: isLogged.get('logged') ?? false
            ? [const RouteHome()]
            : [const RouteLogin()],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
