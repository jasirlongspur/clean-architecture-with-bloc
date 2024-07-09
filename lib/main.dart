import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_project/application/downloads/download_bloc.dart';
import 'package:sample_project/application/search/search_bloc.dart';
import 'package:sample_project/domain/core/di/injectable.dart';

import 'package:sample_project/presentation/main_page/main_page_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<DownloadBloc>(),
        ),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData.dark(
            useMaterial3: true,
          ),
          home: MainPageScreen()),
    );
  }
}
