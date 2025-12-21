import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/profile_appbar.dart';
import 'package:task_manager/ui/widgets/task_item.dart';

class InPrograssTaskScreen extends StatefulWidget {
  const InPrograssTaskScreen({super.key});

  @override
  State<InPrograssTaskScreen> createState() => _InPrograssTaskScreenState();
}

class _InPrograssTaskScreenState extends State<InPrograssTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const TaskItem();
        },
      ),
    );
  }
}
