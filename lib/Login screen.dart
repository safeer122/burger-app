import 'package:flutter/material.dart';
class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false; // Track login button state

  // // Animation controller for button press
  // late AnimationController _controller;
  // late Animation<double> _scaleAnimation;

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = AnimationController(
  //     vsync: _con,
  //     duration: Duration(milliseconds: 300),
  //
  //   );
  //
  //   _scaleAnimation = Tween<double>(begin: 1.0, end: 0.8)
  //       .animate(_controller); // Animate button scale
  // }

  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Username and password fields
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter username';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                // Login button without animation
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        _isLoading = true;
                      });
                      // Simulate login process (replace with actual logic)
                      await Future.delayed(Duration(seconds: 2));
                      setState(() {
                        _isLoading = false;
                      });
                      // Handle successful login (navigation, etc.)
                    }
                  },
                  child: _isLoading ? CircularProgressIndicator() : Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
