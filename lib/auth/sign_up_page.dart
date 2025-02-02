// import 'package:flutter/material.dart';
// import 'package:edu_connect_app/screens/dashboard/student_dashboard.dart';
// import 'package:edu_connect_app/screens/dashboard/teacher_dashboard.dart';

// class SignUpPage extends StatefulWidget {
//   const SignUpPage({Key? key}) : super(key: key);

//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   String userRole = 'Student';
//   bool _isButtonEnabled = false;

//   void _checkFormValidity() {
//     setState(() {
//       _isButtonEnabled = _nameController.text.isNotEmpty &&
//           _emailController.text.isNotEmpty &&
//           _passwordController.text.isNotEmpty;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _nameController.addListener(_checkFormValidity);
//     _emailController.addListener(_checkFormValidity);
//     _passwordController.addListener(_checkFormValidity);
//   }

//   @override
//   void dispose() {
//     _nameController.removeListener(_checkFormValidity);
//     _emailController.removeListener(_checkFormValidity);
//     _passwordController.removeListener(_checkFormValidity);
//     _nameController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   Future<void> _signUp() async {
//     try {
//       // Simulate user creation
//       await Future.delayed(const Duration(seconds: 2));

//       // After sign up, navigate to the appropriate dashboard
//       if (userRole == 'Student') {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const StudentDashboard()),
//         );
//       } else if (userRole == 'Teacher') {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const TeacherDashboard()),
//         );
//       }
//     } catch (e) {
//       // Handle errors
//       showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//           title: const Text('Error'),
//           content: Text(e.toString()),
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
//       resizeToAvoidBottomInset: true,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Column(
//                   children: [
//                     Image.asset('assets/images/Logo.png', height: 100),
//                     const SizedBox(height: 20),
//                     const Text('Get Started',
//                         style: TextStyle(
//                             fontSize: 24, fontWeight: FontWeight.bold)),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 40),
//               const Text('Name', style: TextStyle(fontSize: 16)),
//               TextField(
//                 controller: _nameController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Enter your name',
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const Text('Email', style: TextStyle(fontSize: 16)),
//               TextField(
//                 controller: _emailController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Enter your email',
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const Text('Role', style: TextStyle(fontSize: 16)),
//               DropdownButtonFormField<String>(
//                 value: userRole,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Select your role',
//                 ),
//                 items: <String>['Teacher', 'Student'].map((String value) {
//                   return DropdownMenuItem<String>(
//                       value: value, child: Text(value));
//                 }).toList(),
//                 onChanged: (String? value) {
//                   setState(() {
//                     userRole = value!;
//                   });
//                 },
//               ),
//               const SizedBox(height: 20),
//               const Text('Password', style: TextStyle(fontSize: 16)),
//               TextField(
//                 controller: _passwordController,
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Enter your password',
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: _isButtonEnabled
//                       ? _signUp
//                       : null, // Enable/disable button
//                   child: const Text('Sign Up'),
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: Color(0xFF1A73E8), // Change button color
//                       foregroundColor: Colors.white,
//                       minimumSize: const Size(double.infinity, 50)),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text("Already have an account?"),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       child: const Text('Login'),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String _role = 'student';

  Future<void> _signUp() async {
    if (_formKey.currentState!.validate()) {
      // Simulated signup logic
      final success = true; // Replace with actual signup API call

      if (success) {
        Navigator.pushReplacementNamed(
          context,
          _role == 'student' ? '/student' : '/teacher',
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Full Name'),
                validator: (value) => value!.isEmpty ? 'Enter your name' : null,
              ),
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
              const Text('Select Role:'),
              RadioListTile<String>(
                title: const Text('Student'),
                value: 'student',
                groupValue: _role,
                onChanged: (value) => setState(() => _role = value!),
              ),
              RadioListTile<String>(
                title: const Text('Teacher'),
                value: 'teacher',
                groupValue: _role,
                onChanged: (value) => setState(() => _role = value!),
              ),
              ElevatedButton(
                onPressed: _signUp,
                child: const Text('Create Account'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Already have an account? Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
