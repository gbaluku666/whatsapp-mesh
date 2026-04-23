import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_mesh/core/supabase_client.dart';
import 'package:whatsapp_mesh/theme/app_theme.dart';
import 'package:whatsapp_mesh/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ←←← PASTE YOUR REAL SUPABASE CREDENTIALS HERE
  await SupabaseClientInstance.initialize(
    'https://YOUR-PROJECT-REF.supabase.co',   // Change this
    'YOUR-ANON-KEY',                          // Change this
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Mesh',
      theme: whatsappTheme,
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
