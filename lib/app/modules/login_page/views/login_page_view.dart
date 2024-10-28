import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/controllers/auth_controller.dart';
import 'package:myapp/app/modules/register_page/views/register_page_view.dart'; // Pastikan jalur ini benar

class LoginPageView extends StatelessWidget {
  final AuthController _authController = Get.put(AuthController());
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _authController.loginUser(
                  _emailController.text,
                  _passwordController.text,
                );
              },
              child: Text('Login'),
            ),
            SizedBox(height: 20),
            // Teks untuk navigasi ke halaman register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum memiliki akun? "),
                GestureDetector(
                  onTap: () {
                    Get.to(RegisterPageView()); // Navigasi ke halaman Register
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
