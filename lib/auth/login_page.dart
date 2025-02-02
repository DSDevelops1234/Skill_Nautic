// import 'package:flutter/material.dart';
// import 'package:edu_connect_app/screens/dashboard/student_dashboard.dart';
// import 'package:edu_connect_app/screens/dashboard/teacher_dashboard.dart';
// import 'sign_up_page.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   String userRole =
//       'Student'; // This should be fetched from your authentication logic
//   bool _isButtonEnabled = false;

//   void _checkFormValidity() {
//     setState(() {
//       _isButtonEnabled = _emailController.text.isNotEmpty &&
//           _passwordController.text.isNotEmpty;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _emailController.addListener(_checkFormValidity);
//     _passwordController.addListener(_checkFormValidity);
//   }

//   @override
//   void dispose() {
//     _emailController.removeListener(_checkFormValidity);
//     _passwordController.removeListener(_checkFormValidity);
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   void _login() {
//     // Mock login logic
//     if (_emailController.text == 'student@example.com' &&
//         _passwordController.text == 'password') {
//       userRole = 'Student';
//     } else if (_emailController.text == 'teacher@example.com' &&
//         _passwordController.text == 'password') {
//       userRole = 'Teacher';
//     } else {
//       userRole = 'Unknown';
//     }

//     // Navigate to the appropriate dashboard
//     if (userRole == 'Student') {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const StudentDashboard()),
//       );
//     } else if (userRole == 'Teacher') {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const TeacherDashboard()),
//       );
//     } else {
//       showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//           title: const Text('Error'),
//           content: const Text('Invalid credentials'),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: const Text('OK'),
//             ),
//           ],
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Column(
//                 children: [
//                   Image.asset('assets/images/Logo.png', height: 100),
//                   const SizedBox(height: 20),
//                   const Text('Welcome Back',
//                       style:
//                           TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 40),
//             const Text('Email', style: TextStyle(fontSize: 16)),
//             TextField(
//               controller: _emailController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Enter your email',
//               ),
//             ),
//             const SizedBox(height: 20),
//             const Text('Password', style: TextStyle(fontSize: 16)),
//             TextField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Enter your password',
//               ),
//             ),
//             const SizedBox(height: 10),
//             Align(
//               alignment: Alignment.centerRight,
//               child: TextButton(
//                 onPressed: () {},
//                 child: const Text('Forgot Password?'),
//               ),
//             ),
//             const SizedBox(height: 20),
//             Center(
//               child: ElevatedButton(
//                 onPressed:
//                     _isButtonEnabled ? _login : null, // Enable/disable button
//                 child: const Text('Login'),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Color(0xFF1A73E8), // Change button color
//                   foregroundColor: Colors.white, // Change text color
//                   minimumSize: const Size(double.infinity, 50),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text("Don't have an account?"),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const SignUpPage()),
//                       );
//                     },
//                     child: const Text('Sign Up'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      // Simulated login logic
      final success = true; // Replace with actual login API call

      if (success) {
        final userRole = 'student'; // Replace with actual role from API
        Navigator.pushReplacementNamed(
          context,
          userRole == 'student' ? '/student' : '/teacher',
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) =>
                    value!.contains('@') ? null : 'Enter valid email',
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
                validator: (value) =>
                    value!.length >= 6 ? null : 'Minimum 6 characters',
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _login,
                child: const Text('Sign In'),
              ),
              TextButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/signup'),
                child: const Text('Create Account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
