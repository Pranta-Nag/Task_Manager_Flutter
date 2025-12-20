import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/profile_appbar.dart';
import 'package:task_manager/ui/widgets/task_summery_card.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppbar(),
      body: Column(
        children: [_buildSummerySection()],
      ),
    );
  }

  Widget _buildSummerySection() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TaskSummeryCard(
            title: 'New Task',
            count: '32',
          ),
          TaskSummeryCard(
            title: 'Completed',
            count: '32',
          ),
          TaskSummeryCard(
            title: 'In Progress',
            count: '32',
          ),
          TaskSummeryCard(
            title: 'Cancel',
            count: '32',
          ),
        ],
      ),
    );
  }
}
