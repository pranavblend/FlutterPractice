import 'package:flutter/material.dart';


class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final List<Map<String, dynamic>> _tasks = [];

  void _addTask(String task) {
    setState(() {
      _tasks.add({"task": task, "completed": false});
    });
  }

  void _deleteTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  void _toggleTaskCompletion(int index) {
    setState(() {
      _tasks[index]["completed"] = !_tasks[index]["completed"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'),
      ),
      body: ListView.builder(
        itemCount: _tasks.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(_tasks[index]["task"]),
            onDismissed: (direction) {
              _deleteTask(index);
            },
            background: Container(color: Colors.red),
            child: ListTile(
              title: Text(
                _tasks[index]["task"],
                style: TextStyle(
                  decoration: _tasks[index]["completed"]
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
              leading: Checkbox(
                value: _tasks[index]["completed"],
                onChanged: (value) {
                  _toggleTaskCompletion(index);
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _displayAddTaskDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> _displayAddTaskDialog(BuildContext context) async {
    String newTask = '';
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add a new task'),
          content: TextField(
            onChanged: (value) {
              newTask = value;
            },
            decoration: InputDecoration(hintText: "Enter task name"),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                if (newTask.isNotEmpty) {
                  _addTask(newTask);
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
