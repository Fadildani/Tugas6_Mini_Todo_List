import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  final List<String> tasks;
  final List<bool> completed;
  final Function(int) onToggle;

  const TaskList({
    super.key,
    required this.tasks,
    required this.completed,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    if (tasks.isEmpty) {
      return const Center(
        child: Text(
          'Belum ada tugas',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      );
    }

    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => onToggle(index),
          child: Card(
            child: ListTile(
              leading: Icon(
                completed[index]
                    ? Icons.check_circle
                    : Icons.circle_outlined,
                color: completed[index] ? Colors.green : Colors.grey,
              ),
              title: Text(
                tasks[index],
                style: TextStyle(
                  fontSize: 16,
                  decoration: completed[index]
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
