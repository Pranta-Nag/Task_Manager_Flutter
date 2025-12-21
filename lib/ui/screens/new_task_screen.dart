import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/add_new_task_screen.dart';
import 'package:task_manager/ui/utility/app_colors.dart';
import 'package:task_manager/ui/widgets/task_item.dart';
import 'package:task_manager/ui/widgets/task_summery_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 6, left: 6, right: 6),
        child: Column(
          children: [
            _buildSummerySection(),
            const SizedBox(height: 8,),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const TaskItem();
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _onTapAddButton, 
      backgroundColor: AppColors.themeColor,
      foregroundColor: Colors.white,
      child:const Icon(Icons.add),),
    );
  }

void _onTapAddButton(){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddNewTaskScreen()));
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
