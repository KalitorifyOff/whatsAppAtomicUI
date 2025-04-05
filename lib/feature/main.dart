import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsappuiatomic/feature/feature/chats/data/provider/chat_provider.dart';
import 'package:whatsappuiatomic/feature/feature/chats/data/repo/chat_repo_imp.dart';
import 'package:whatsappuiatomic/feature/feature/chats/domain/repo/chat_repo.dart';
import 'package:whatsappuiatomic/feature/feature/chats/presentation/bloc/bloc/chats_bloc.dart';
import 'package:whatsappuiatomic/feature/feature/chats/presentation/screens/chats_screen.dart';

void main() {
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IChatRepo>(
          create: (context) => ChatRepoImp(chatProvider: ChatProvider()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => ChatListBloc(chatRepo: context.read<IChatRepo>()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ChatsScreen(),
    );
  }
}
