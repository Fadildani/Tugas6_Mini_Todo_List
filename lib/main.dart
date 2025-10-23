import 'package:flutter/material.dart';
import 'todo_page.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daftar Tugas Kamu Hari ini',
      home: TodoPage(),
    );
  }
}
