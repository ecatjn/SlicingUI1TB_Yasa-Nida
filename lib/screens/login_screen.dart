import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? emailError;
  String? passwordError;

  void _validateAndLogin() {
    setState(() {
      emailError = null;
      passwordError = null;
    });

    String email = _emailController.text.trim();
    String password = _passwordController.text;

    if (!email.contains('@')) {
      setState(() => emailError = "Email Tidak Terdaftar! Coba lagi");
    }

    if (password.length < 8 || !RegExp(r'\d').hasMatch(password)) {
      setState(() => passwordError = "Kata Sandi Minimal Harus Berisi 8 Kata Disertai Angka");
    }

    if (emailError == null && passwordError == null) {
      // Lakukan proses login di sini (tanpa print)
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final headerHeight = MediaQuery.of(context).size.height * 0.25;
    final logoWidth = screenWidth * 0.3;
    const maxLogoWidth = 150.0;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Header Container
                Container(
                  height: headerHeight,
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    color: Color(0xFFD9D5C2),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      'ASSET/logoapk.png',
                      width: logoWidth > maxLogoWidth ? maxLogoWidth : logoWidth,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                const SizedBox(height: 24),
                const Text(
                  "Selamat Datang",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 24),

                // Email TextField
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    errorText: emailError,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Password TextField
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Kata Sandi",
                    errorText: passwordError,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 8),

                // Forgot password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Lupa Kata Sandi ?"),
                  ),
                ),

                const SizedBox(height: 8),

                // Login Button
                ElevatedButton(
                  onPressed: _validateAndLogin,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6BBBAE),
                    minimumSize: const Size.fromHeight(48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("Login"),
                ),

                const SizedBox(height: 12),

                // Daftar
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Belum Punya Akun ? "),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "DAFTAR",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),
                const Text("Atau Lanjutkan Dengan"),
                const SizedBox(height: 12),

                // Google Logo
                GestureDetector(
                  onTap: () {},
                  child: Image.asset('ASSET/googlelogo.png', height: 36),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
