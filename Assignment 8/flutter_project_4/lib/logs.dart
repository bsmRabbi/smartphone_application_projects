import 'package:flutter/material.dart';
import 'package:flutter_project_4/widgets/input_field.dart';
import 'homepage.dart';

String? registeredUsername;
String? registeredEmail;
String? registeredPassword;

// Login Page
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    final username = _usernameController.text;
    final password = _passwordController.text;

    if (username == 'admin' || password == 'pass') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    } else if (username == registeredUsername &&
        password == registeredPassword) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Login Failed'),
          content: const Text('Invalid username or password.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputField(
              controller: _usernameController,
              keyboardType: TextInputType.text,
              hint: 'Enter your username',
              label: 'Username',
              icon: Icons.person,
              errorText: null,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Username is required";
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            InputField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              hint: 'Enter your password',
              label: 'Password',
              icon: Icons.lock,
              errorText: null,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Password is required";
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _handleLogin, child: const Text('Login')),
            const SizedBox(height: 20),
            Text("Don't have an account?"),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}

// Registration Page
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? email;

  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 12),
              InputField(
                controller: nameController,
                keyboardType: TextInputType.name,
                hint: 'Enter your name',
                label: 'Name',
                icon: Icons.person,
                errorText: errorText,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Name is required";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              InputField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                hint: 'Enter your email',
                label: 'Email',
                icon: Icons.email,
                errorText: errorText,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Email is required";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              InputField(
                controller: passController,
                keyboardType: TextInputType.visiblePassword,
                hint: 'Enter your password',
                label: 'Password',
                icon: Icons.lock,
                errorText: errorText,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Password is required";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_formKey.currentState!.validate()) {
                      registeredUsername = nameController.text.trim();
                      registeredEmail = emailController.text.trim();
                      registeredPassword = passController.text;
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Registered successfully'),
                        ),
                      );
                      Navigator.pop(context);
                    }
                  });
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
