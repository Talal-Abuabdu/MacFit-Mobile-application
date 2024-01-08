// Importing necessary packages and libraries
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

// Main entry point of the application

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

// The main application widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialApp widget, the root of the Flutter application
    return MaterialApp(
      title: 'MacFit', // Setting the title of the application
      theme: ThemeData(
        primarySwatch: Colors.teal, // Setting the primary color theme
      ),
      initialRoute: '/', // Setting the initial route of the application
      routes: {
        '/': (context) => LoginPage(), // Route for the login page
        '/registerPage': (context) => RegisterPage(), // Route for the registration page
        '/macFitHomePage': (context) => MacFitHomePage(), // Route for the main home page
        '/changePassword': (context) => ChangePasswordPage(), // Route for the change password page
        '/changePasswordScreen': (context) => ChangePasswordScreen(), // Route for the change password screen
        '/muscleGroup': (context) => MuscleGroupPage(), // Route for the muscle group page
        '/Biceps': (context) => BicepsPage(), // Route for the Biceps page
        '/Triceps': (context) => TricepsPage(), // Route for the Triceps page
        '/Back': (context) => BackPage(), // Route for the Back page
        '/Chest': (context) => ChestPage(), // Route for the Chest page
      },
      debugShowCheckedModeBanner: false, // Removing the debug banner in the top-right corner
    );
  }
}

// Stateful widget for the main home page of the MacFit application
class MacFitHomePage extends StatefulWidget {
  @override
  _MacFitHomePageState createState() => _MacFitHomePageState();
}

// State class for the MacFitHomePage
class _MacFitHomePageState extends State<MacFitHomePage> {
  @override
  Widget build(BuildContext context) {
    // Scaffold widget is a basic material design visual layout structure
    return Scaffold(
      backgroundColor: Colors.transparent, // Set the background color to be transparent
      appBar: AppBar(
        title: Text('MacFit',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.teal, // Set the app bar background color
      ),
      body: Container(
        // Container with a gradient background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.teal, Colors.black],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Container with MacFit logo
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 370.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://worldsportsistanbul.com/wp-content/uploads/2023/10/macfit_logo-03.png",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80.0),
              // Welcome message
              Text(
                ' Welcome to MacFit Application Your Guide To Fitness Success ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 23.0, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              // Instruction message
              Text(
                'Proceed to select your muscle group',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              const SizedBox(height: 30.0),
              // Button to navigate to the muscle group selection page
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/muscleGroup');
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Muscle Group Selection',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
      // Bottom navigation bar for easy navigation
      bottomNavigationBar: BottomNavigationBar(
        items: [
          // Home icon in the bottom navigation bar
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 24.0,
            ),
          ),
          // Change Password icon in the bottom navigation bar
          BottomNavigationBarItem(
            label: 'Change Password',
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/changePassword');
              },
              child: Icon(
                Icons.lock,
                color: Colors.white,
                size: 24.0,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.teal[700], // Set the bottom navigation bar background color
      ),
    );
  }
}

// Stateless widget for the Change Password page
class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold widget is a basic material design visual layout structure
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'), // Set the app bar title
        backgroundColor: Colors.teal, // Set the app bar background color
      ),
      body: Container(
        // Container with a gradient background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.teal, Colors.black],
          ),
        ),
        child: Center(
          // Elevated button to navigate to the ChangePasswordScreen
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/changePasswordScreen');
            },
            child: Text('Change Password'),
          ),
        ),
      ),
    );
  }
}

// Stateless widget for the Change Password screen
class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold widget is a basic material design visual layout structure
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'), // Set the app bar title
        backgroundColor: Colors.teal, // Set the app bar background color
      ),
      body: Container(
        // Container with a gradient background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.teal, Colors.black],
          ),
        ),
        child: Center(
          // Text widget displaying information about the change password screen
          child: Text(
            'This is the screen to change the password.',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

// Stateless widget for the Muscle Group page
class MuscleGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold widget is a basic material design visual layout structure
    return Scaffold(
      backgroundColor: Colors.transparent, // Set the background color to be transparent
      appBar: AppBar(
        title: Text(
          'Muscle Group',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal, // Set the app bar background color
      ),
      body: Container(
        // Container with a gradient background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.teal, Colors.black],
          ),
        ),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              // Text introducing the muscle group selection
              Text(
                'Please proceed to choose your desired muscle group!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..shader = LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.white, Colors.yellow],
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                ),
              ),
              SizedBox(height: 20.0),
              // Container with an image for the Biceps
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 300.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://www.macfit.com/wp-content/uploads/2023/04/biceps-nedir-1024x683.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              // Elevated button to navigate to the Biceps page
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Biceps');
                },
                child: Text('Biceps'),
              ),
              const SizedBox(height: 10.0),
              // Container with an image for the Triceps
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 300.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://www.macfit.com/wp-content/uploads/2023/02/triceps.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              // Elevated button to navigate to the Triceps page
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Triceps');
                },
                child: Text('Triceps'),
              ),
              const SizedBox(height: 10.0),
              // Container with an image for the Back
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 300.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://i0.wp.com/www.strengthlog.com/wp-content/uploads/2022/04/back-and-triceps-workout.jpg?fit=1000%2C667&ssl=1",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              // Elevated button to navigate to the Back page
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Back');
                },
                child: Text('Back'),
              ),
              const SizedBox(height: 10.0),
              // Container with an image for the Chest
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 300.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8D0eg3Ditx86p_2m_G9q_I1YowvE-t5AHSg&usqp=CAU",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              // Elevated button to navigate to the Chest page
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Chest');
                },
                child: Text('Chest'),
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}

// Stateful widget for the Biceps Exercises page
class BicepsPage extends StatefulWidget {
  @override
  _BicepsPageState createState() => _BicepsPageState();
}

// State class for the BicepsPage
class _BicepsPageState extends State<BicepsPage> {
  // List to keep track of exercise completion status
  List<bool> exerciseChecklist = [false, false];

  @override
  Widget build(BuildContext context) {
    // Count of checked exercises
    int checkedExercisesCount =
        exerciseChecklist.where((checked) => checked).length;

    // Scaffold widget is a basic material design visual layout structure
    return Scaffold(
      backgroundColor: Colors.transparent, // Set the background color to be transparent
      appBar: AppBar(
        title: Text(
          'Biceps Exercises',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[700], // Set the app bar background color
      ),
      body: Container(
        // Container with a gradient background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.teal, Colors.black],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Linear progress indicator to show completion status
              Container(
                width: 300.0,
                child: LinearProgressIndicator(
                  value: checkedExercisesCount / exerciseChecklist.length,
                  minHeight: 10.0,
                  color: Colors.black,
                  backgroundColor: Colors.white,
                  semanticsLabel: 'Linear progress indicator',
                  semanticsValue:
                      '${(checkedExercisesCount / exerciseChecklist.length * 100).toStringAsFixed(0)}%',
                ),
              ),
              SizedBox(height: 30.0),
              // Container with an image for the Bicep Curl Dumbell exercise
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 300.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://i.ytimg.com/vi/ziVPFOROR3k/maxresdefault.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              // Build a checkbox and button for Bicep Curl Dumbell exercise
              buildExerciseCheckbox(
                  0, 'Bicep Curl Dumbell', _launchUrlBicepCurlDumbell),
              const SizedBox(height: 10.0),
              // Container with an image for the Machine Biceps Curl exercise
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 300.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://i.ytimg.com/vi/9tu8SwGeevo/maxresdefault.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // Build a checkbox and button for Machine Biceps Curl exercise
              buildExerciseCheckbox(
                  1, 'Machine Biceps Curl', _launchUrlMachineBicepsCurl),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build a row with checkbox and button for an exercise
  Widget buildExerciseCheckbox(
      int index, String exerciseName, Function() onPressed) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Checkbox for exercise completion status
        Checkbox(
          value: exerciseChecklist[index],
          onChanged: (value) {
            setState(() {
              exerciseChecklist[index] = value!;
            });
          },
        ),
        // Elevated button to launch exercise URL
        ElevatedButton(
          onPressed: onPressed,
          child: Text(exerciseName),
        ),
      ],
    );
  }

  // Biceps Page Url's
  final Uri _urlBicepCurlDumbell =
      Uri.parse('https://youtu.be/ziVPFOROR3k?si=Bu0ds1AL1weu7CnX');
  Future<void> _launchUrlBicepCurlDumbell() async {
    if (!await launchUrl(_urlBicepCurlDumbell)) {
      throw Exception('Could not launch $_urlBicepCurlDumbell');
    }
  }

  final Uri _urlMachineBicepsCurl =
      Uri.parse('https://youtu.be/9tu8SwGeevo?si=1-SS6mluLI7wP-6S');
  Future<void> _launchUrlMachineBicepsCurl() async {
    if (!await launchUrl(_urlMachineBicepsCurl)) {
      throw Exception('Could not launch $_urlMachineBicepsCurl');
    }
  }
}
// Stateful widget for the Triceps Exercises page
class TricepsPage extends StatefulWidget {
  @override
  _TricepsPageState createState() => _TricepsPageState();
}

// State class for the TricepsPage
class _TricepsPageState extends State<TricepsPage> {
  // List to keep track of exercise completion status
  List<bool> exerciseChecklist = [false, false];

  @override
  Widget build(BuildContext context) {
    // Count of checked exercises
    int checkedExercisesCount =
        exerciseChecklist.where((checked) => checked).length;

    // Scaffold widget is a basic material design visual layout structure
    return Scaffold(
      backgroundColor: Colors.transparent, // Set the background color to be transparent
      appBar: AppBar(
        title: Text(
          'Triceps Exercises',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[700], // Set the app bar background color
      ),
      body: Container(
        // Container with a gradient background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.teal, Colors.black],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Linear progress indicator to show completion status
              Container(
                width: 300.0,
                child: LinearProgressIndicator(
                  value: checkedExercisesCount / exerciseChecklist.length,
                  minHeight: 10.0,
                  color: Colors.black,
                  backgroundColor: Colors.white,
                  semanticsLabel: 'Linear progress indicator',
                  semanticsValue:
                      '${(checkedExercisesCount / exerciseChecklist.length * 100).toStringAsFixed(0)}%',
                ),
              ),
              SizedBox(height: 30.0),
              // Container with an image for Cable Rope Triceps Pushdown exercise
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 300.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://i.ytimg.com/vi/NeCiGYWsx1k/hq720.jpg?sqp=-oaymwE7CK4FEIIDSFryq4qpAy0IARUAAAAAGAElAADIQj0AgKJD8AEB-AH-CYAC0AWKAgwIABABGGUgXChaMA8=&rs=AOn4CLDvWX8CkU3W7WwBJSuvSFTseOlt6g",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              // Build a checkbox and button for Cable Rope Triceps Pushdown exercise
              buildExerciseCheckbox(
                  0, 'Cable Rope Triceps Pushdown', _launchUrlCableRopeTricepsPushdown),
              SizedBox(height: 10.0),
              // Container with an image for Cable Triceps Pushdown exercise
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 300.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://i.ytimg.com/vi/iFH5E683Q1Y/maxresdefault.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              // Build a checkbox and button for Cable Triceps Pushdown exercise
              buildExerciseCheckbox(
                  1, 'Cable Triceps PushDown', _launchUrlCableTricepsPushdown),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build a row with checkbox and button for an exercise
  Widget buildExerciseCheckbox(
      int index, String exerciseName, Function() onPressed) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Checkbox for exercise completion status
        Checkbox(
          value: exerciseChecklist[index],
          onChanged: (value) {
            setState(() {
              exerciseChecklist[index] = value!;
            });
          },
        ),
        // Elevated button to launch exercise URL
        ElevatedButton(
          onPressed: onPressed,
          child: Text(exerciseName),
        ),
      ],
    );
  }

  // Triceps Page Url's
  final Uri _urlCableRopeTricepsPushdown =
      Uri.parse('https://youtu.be/NeCiGYWsx1k?si=yRnM4fiCQVPf8X2W');
  Future<void> _launchUrlCableRopeTricepsPushdown() async {
    if (!await launchUrl(_urlCableRopeTricepsPushdown)) {
      throw Exception('Could not launch $_urlCableRopeTricepsPushdown');
    }
  }

  final Uri _urlCableTricepsPushdown =
      Uri.parse('https://youtu.be/iFH5E683Q1Y?si=Gk2RtzCMEabvdYBq');
  Future<void> _launchUrlCableTricepsPushdown() async {
    if (!await launchUrl(_urlCableTricepsPushdown)) {
      throw Exception('Could not launch $_urlCableTricepsPushdown');
    }
  }
}

// Stateful widget for the Back Exercises page
class BackPage extends StatefulWidget {
  @override
  _BackPageState createState() => _BackPageState();
}

// State class for the BackPage
class _BackPageState extends State<BackPage> {
  // List to keep track of exercise completion status
  List<bool> exerciseChecklist = [false, false];

  @override
  Widget build(BuildContext context) {
    // Count of checked exercises
    int checkedExercisesCount =
        exerciseChecklist.where((checked) => checked).length;

    // Scaffold widget is a basic material design visual layout structure
    return Scaffold(
      backgroundColor: Colors.transparent, // Set the background color to be transparent
      appBar: AppBar(
        title: Text(
          'Back Exercises',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[700], // Set the app bar background color
      ),
      body: Container(
        // Container with a gradient background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.teal, Colors.black],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Linear progress indicator to show completion status
              Container(
                width: 300.0,
                child: LinearProgressIndicator(
                  value: checkedExercisesCount / exerciseChecklist.length,
                  minHeight: 10.0,
                  color: Colors.black,
                  backgroundColor: Colors.white,
                  semanticsLabel: 'Linear progress indicator',
                  semanticsValue:
                      '${(checkedExercisesCount / exerciseChecklist.length * 100).toStringAsFixed(0)}%',
                ),
              ),
              SizedBox(height: 30.0),
              // Container with an image for Lat Pull Down exercise
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 300.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://i.ytimg.com/vi/BL0Q7ipPYxw/maxresdefault.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // Build a checkbox and button for Lat Pull Down exercise
              buildExerciseCheckbox(0, 'Lat Pull Down', _launchUrlLatPullDown),
              const SizedBox(height: 10.0),
              // Container with an image for Barbell Back Squat exercise
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 300.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://i.ytimg.com/vi/zB79uCHVN7k/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBep3qCnYmEvmJRgxO9WcTk_xZYhA",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // Build a checkbox and button for Barbell Back Squat exercise
              buildExerciseCheckbox(
                  1, 'Barbell Back Squat', _launchUrlBarbellBackSquat),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build a row with checkbox and button for an exercise
  Widget buildExerciseCheckbox(
      int index, String exerciseName, Function() onPressed) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Checkbox for exercise completion status
        Checkbox(
          value: exerciseChecklist[index],
          onChanged: (value) {
            setState(() {
              exerciseChecklist[index] = value!;
            });
          },
        ),
        // Elevated button to launch exercise URL
        ElevatedButton(
          onPressed: onPressed,
          child: Text(exerciseName),
        ),
      ],
    );
  }

  // Back Page Url's
  final Uri _urlLatPullDown =
      Uri.parse('https://youtu.be/BL0Q7ipPYxw?si=pL6iszMBZehHbvsu');
  Future<void> _launchUrlLatPullDown() async {
    if (!await launchUrl(_urlLatPullDown)) {
      throw Exception('Could not launch $_urlLatPullDown');
    }
  }

  final Uri _urlBarbellBackSquat =
      Uri.parse('https://youtu.be/OAh87MsjHmY?si=0la77p_s6WwlMqDF');
  Future<void> _launchUrlBarbellBackSquat() async {
    if (!await launchUrl(_urlBarbellBackSquat)) {
      throw Exception('Could not launch $_urlBarbellBackSquat');
    }
  }
}

// Stateful widget for the Chest Exercises page
class ChestPage extends StatefulWidget {
  @override
  _ChestPageState createState() => _ChestPageState();
}

// State class for the ChestPage
class _ChestPageState extends State<ChestPage> {
  // List to keep track of exercise completion status
  List<bool> exerciseChecklist = [false, false];

  @override
  Widget build(BuildContext context) {
    // Count of checked exercises
    int checkedExercisesCount =
        exerciseChecklist.where((checked) => checked).length;

    // Scaffold widget is a basic material design visual layout structure
    return Scaffold(
      backgroundColor: Colors.transparent, // Set the background color to be transparent
      appBar: AppBar(
        title: Text(
          'Exercises',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.teal[700], // Set the app bar background color
        centerTitle: true,
      ),
      body: Container(
        // Container with a gradient background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.teal, Colors.black],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Linear progress indicator to show completion status
              Container(
                width: 300.0,
                child: LinearProgressIndicator(
                  value: checkedExercisesCount / exerciseChecklist.length,
                  minHeight: 10.0,
                  color: Colors.black,
                  backgroundColor: Colors.white,
                  semanticsLabel: 'Linear progress indicator',
                  semanticsValue:
                      '${(checkedExercisesCount / exerciseChecklist.length * 100).toStringAsFixed(0)}%',
                ),
              ),
              SizedBox(height: 30.0),
              // Container with an image for Machine Chest Press exercise
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 300.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://www.macfit.com/wp-content/uploads/2023/06/chest-press-macfit-1024x576.jpeg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // Build a checkbox and button for Machine Chest Press exercise
              const SizedBox(height: 10.0),
              buildExerciseCheckbox(
                  0, 'Machine Chest Press', _launchUrlMachineChestPress),
              // Container with an image for Machine Pectoral Fly exercise
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 300.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://www.macfit.com/wp-content/uploads/2023/06/pectoral-fly-macfit-1024x576.jpeg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // Build a checkbox and button for Machine Pectoral Fly exercise
              buildExerciseCheckbox(
                  1, 'Machine Pectoral Fly', _launchUrlMachinePectoralFly),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build a row with checkbox and button for an exercise
  Widget buildExerciseCheckbox(
      int index, String exerciseName, Function() onPressed) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Checkbox for exercise completion status
        Checkbox(
          value: exerciseChecklist[index],
          onChanged: (value) {
            setState(() {
              exerciseChecklist[index] = value!;
            });
          },
        ),
        // Elevated button to launch exercise URL
        ElevatedButton(
          onPressed: onPressed,
          child: Text(exerciseName),
        ),
      ],
    );
  }

  // Chest Page URL's
  final Uri _urlMachineChestPress =
      Uri.parse('https://youtu.be/2wFMkurVmrQ?si=8vYvtll8WGcy4Ysp');
  Future<void> _launchUrlMachineChestPress() async {
    if (!await launchUrl(_urlMachineChestPress)) {
      throw Exception('Could not launch $_urlMachineChestPress');
    }
  }

  final Uri _urlMachinePectoralFly =
      Uri.parse('https://youtu.be/nhzaklnA798?si=ZtD_VR78BTGr5HuV');
  Future<void> _launchUrlMachinePectoralFly() async {
    if (!await launchUrl(_urlMachinePectoralFly)) {
      throw Exception('Could not launch $_urlMachinePectoralFly');
    }
  }
}

// Stateless widget for the login page
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold widget is a basic material design visual layout structure
    return Scaffold(
      // Setting resizeToAvoidBottomInset to false to prevent the view from resizing when the keyboard appears
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Login'), // AppBar with the title 'Login'
        backgroundColor: Colors.teal, // AppBar background color
      ),
      body: Container(
        // Container with a gradient background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.teal, Colors.black],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              // Container with the MacFit logo
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 370.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://worldsportsistanbul.com/wp-content/uploads/2023/10/macfit_logo-03.png",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80.0), // SizedBox for spacing
              // LoginForm widget for user authentication
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

// StatefulWidget for the login form
class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

// State class for the login form
class _LoginFormState extends State<LoginForm> {
  // GlobalKey to uniquely identify the Form widget
  final _formKey = GlobalKey<FormState>();

  // TextEditingController for the Email field
  TextEditingController _emailController = TextEditingController();

  // TextEditingController for the password field
  TextEditingController _passwordController = TextEditingController();

  // Function to handle the login process
  void _login(BuildContext context) async {
    // Validate the form before proceeding with login
    if (_formKey.currentState!.validate()) {
      try {
        // Attempt to sign in with the provided email and password
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text,
        );

        // If login is successful, navigate to the home page
        if (userCredential.user != null) {
          Navigator.pushNamed(context, '/macFitHomePage');
        }
      } catch (e) {
        // Print error message and show a Snackbar if login fails
        print('Login failed: $e');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Login failed: $e'),
          duration: Duration(seconds: 5),
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Form widget to hold the form fields and validation logic
    return Form(
      key: _formKey,
      child: Container(
        // Container with gradient background and border radius
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.grey, Colors.white],
          ),
        ),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            // List of form fields for membership Id, password, and buttons
            children: [
              // TextFormField for email
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  // Validate membership ID 
                  if (value == null || value.isEmpty) {
                    return 'Please enter your "membership ID"@xyz.com';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Membership ID@xyz.com',
                ),
              ),
              // TextFormField for password with obscured text
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                validator: (value) {
                  // Validate password
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              // ElevatedButton for login
              ElevatedButton(
                onPressed: () {
                  _login(context);
                },
                child: Text('Login'),
              ),
              // ElevatedButton for navigation to the registration page
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/registerPage');
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// StatelessWidget for the registration page
class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold widget for the overall structure of the page
    return Scaffold(
      // Centered content in the body of the page
      // Container with padding and decoration
      body: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            // Gradient background for the container
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.teal, Colors.black],
            ),
            // Border radius for rounded corners
            borderRadius: BorderRadius.circular(15.0),
          ),
        child: Center(
          // Text widget displaying registration information
          child: Text(
            'To register please feel free to contact our customer service line through:\n 0850 532 70 00', textAlign: TextAlign.center ,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}