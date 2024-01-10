import 'package:crossxadminapp/screen/dhashboard.dart';
import 'package:crossxadminapp/screen/editstudents_details.dart';
import 'package:crossxadminapp/screen/installment_screen.dart';
import 'package:crossxadminapp/screen/login_screen.dart';
import 'package:crossxadminapp/screen/students_details.dart';
import 'package:flutter/material.dart';
import 'package:firedart/firedart.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

const apiKey = 'AIzaSyBgHWVtnxjHzBaVNeP2Wp_PszYAApoU_5g';
const projectId = 'crossxadminapp';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseAuth.initialize(apiKey, VolatileStore());
  runApp(const MyApp());

  doWhenWindowReady(() {
    final win = appWindow;
    final initialSize = win.size;
    win.minSize = initialSize;
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "Admin App";
    win.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CrossX AdminApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StudentDetails(),
      debugShowCheckedModeBanner: false,
    );
  }
}
