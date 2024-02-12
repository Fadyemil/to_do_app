// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:note_app/db/db_helper.dart';
// import 'package:note_app/services/notification_services.dart';
import 'package:note_app/services/theme_services.dart';
import 'package:note_app/ui/pages/home_page.dart';
// import 'package:note_app/ui/pages/home_page.dart';
// import 'package:note_app/ui/pages/home_page.dart';
import 'package:note_app/ui/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset('assets/images/checklist-1295319_1280.webp'),
        title: "Welcome to TO DO App",
        body:
            """This is a simple app for taking notes.\n\nYou can add, edit and delete your Tasks.""",
      ),
      PageViewModel(
        image: Image.asset('assets/images/to-do-list-apps.png'),
        title: "What are the benefits of this application?",
        body:
            """1. Remember all tasks and duties. You may forget some of them if you do not write them down\n
2. When you write down your tasks, you will not be busy remembering or thinking about the tasks, and you will benefit from your time thinking about other things\n
3. Writing down your morning tasks the night before helps you sleep deeply and more comfortably instead of keeping your mind occupied all night with what you have to do tomorrow.\n""",
      ),
      PageViewModel(
        image: Image.asset('assets/images/to-do-list-app-25-1024x511.png'),
        title: "Welcome to Note App",
        body:
            """Let every minute bear the mark of achievement, and every hour be an opportunity to reach our goals. Let's embark on a journey of productivity and growth with our task management app!""",
      ),
    ];
  }

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Themes.light,
      darkTheme: Themes.dart,
      themeMode: ThemeServices().theme,
      home: Scaffold(
        body: IntroductionScreen(
          showNextButton: true,
          showSkipButton: true,
          skip: const Text("Skip"),
          next: const Text("Next"),
          done: const Text("Done"),
          onDone: () {
            Get.to(
              const HomePage(),
              transition: Transition.fade,
              duration: const Duration(seconds: 3),
            );
          },
          pages: getPages(),
          skipStyle: TextButton.styleFrom(foregroundColor: Colors.red),
          doneStyle: TextButton.styleFrom(foregroundColor: Colors.green),
          nextStyle: TextButton.styleFrom(foregroundColor: Colors.blue),
        ),
      ),
    );
  }
}
