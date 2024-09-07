import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class TodoListPageui extends StatefulWidget {
  @override
  _TodoListPageuiState createState() => _TodoListPageuiState();
}

class _TodoListPageuiState extends State<TodoListPageui> {
  List<String> _tasks = [];

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _tasks = prefs.getStringList('tasks') ?? [];
    });
  }

  Future<void> _saveTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('tasks', _tasks);
  }

  void _addTask(String task) {
    setState(() {
      _tasks.add(task);
    });
    _saveTasks();
  }

  void _deleteTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
    _saveTasks();
  }

  void _toggleTaskCompletion(int index) {
    setState(() {
      if (_tasks[index].startsWith('[x] ')) {
        _tasks[index] = _tasks[index].substring(4);
      } else {
        _tasks[index] = '[x] ' + _tasks[index];
      }
    });
    _saveTasks();
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
          bool isCompleted = _tasks[index].startsWith('[x] ');
          String taskText = isCompleted ? _tasks[index].substring(4) : _tasks[index];
          return Dismissible(
            key: Key(_tasks[index]),
            onDismissed: (direction) {
              _deleteTask(index);
            },
            background: Container(color: Colors.blueAccent),
            child: ListTile(
              title: Text(
                taskText,
                style: TextStyle(
                  decoration: isCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
              leading: Checkbox(
                value: isCompleted,
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
