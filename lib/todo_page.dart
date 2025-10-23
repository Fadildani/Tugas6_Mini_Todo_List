import 'package:flutter/material.dart';
import 'task_list.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final TextEditingController _controller = TextEditingController();
  List<String> tasks = [];
  List<bool> completed = [];

  void _addTask() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        tasks.add(_controller.text);
        completed.add(false);
        _controller.clear();
      });
    }
  }

  void _toggleTask(int index) {
    setState(() {
      completed[index] = !completed[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Tugas Kamu hari ini'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // input teks
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Ketik tugas...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: _addTask, // 
                ),
              ),
              onChanged: (value) {
                debugPrint("Mengetik: $value"); 
              },
            ),

            const SizedBox(height: 20),

            // daftar tugas
            Expanded(
              child: TaskList(
                tasks: tasks,
                completed: completed,
                onToggle: _toggleTask,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
