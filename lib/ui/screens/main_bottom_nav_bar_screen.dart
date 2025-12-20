import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/add_new_task_screen.dart';
import 'package:task_manager/ui/screens/canceled_task_screen.dart';
import 'package:task_manager/ui/screens/completed_task_screen.dart';
import 'package:task_manager/ui/screens/in_prograss_task_screen.dart';
import 'package:task_manager/ui/utility/app_colors.dart';

class MainBottomNavBarScreen extends StatefulWidget {
  const MainBottomNavBarScreen({super.key});

  @override
  State<MainBottomNavBarScreen> createState() => _MainBottomNavBarScreenState();
}

class _MainBottomNavBarScreenState extends State<MainBottomNavBarScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = const[
    AddNewTaskScreen(),
    CompletedTaskScreen(),
    InPrograssTaskScreen(),
    CanceledTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            _selectedIndex = index;
            if (mounted) {
              setState(() {});
            }
          },
          selectedItemColor: AppColors.themeColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.task), label: 'New Task'),
            BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Completed'),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit), label: 'In Progress'),
            BottomNavigationBarItem(
                icon: Icon(Icons.close), label: 'Canceled'),
          ]),
    );
  }
}
