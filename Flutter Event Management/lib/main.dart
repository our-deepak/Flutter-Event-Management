// All the code clear
import 'package:flutter/material.dart';
import 'package:flutter_notebook_22/ep_1290_get_api_call/get_api_call.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';



main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(child: App()),
  );
}





class App extends StatelessWidget {

  App({Key? key}) : super(key: key);

  final _router = GoRouter(routes: [
    GoRoute(path: "/",
        builder: (context, state) => CallGetApi()),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      // theme: ThemeData.light().copyWith(
      //     scaffoldBackgroundColor: Colors.orange[100]
      // ),
    );
  }
}
