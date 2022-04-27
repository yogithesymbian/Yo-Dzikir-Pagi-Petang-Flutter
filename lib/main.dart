import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'src/ui/dzikir/dzikir_view.dart';
import 'src/utils/constants/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // di.init();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: const [
        // BlocProvider(
        //   create: (_) => di.locator<DzikirPagiBloc>(),
        // ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: appName,
        theme: AppTheme.light,
        home: const Scaffold(
          resizeToAvoidBottomInset: true,
          body: DzikirView(),
        ),
      ),
    );
  }
}
