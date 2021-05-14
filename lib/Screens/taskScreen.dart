import 'package:flutter/material.dart';
import 'package:todoy/Constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoy/Widgets/tasksList.dart';
import 'package:todoy/taskData.dart';

import '../task.dart';
import 'addTaskScreen.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
//   @override
//   _TaskScreenState createState() => _TaskScreenState();
// }
//
// class _TaskScreenState extends State<TaskScreen> {
//   // @override
//   // Widget buildBottomSheet(BuildContext context) {
//   //   return AddTaskScreen();
//   // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor2,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                color: kColor3,
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(),
              ),
            ),
          );
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: kColor2,
          size: 30,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: kColor2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'TODOEY',
                  style: GoogleFonts.pacifico(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: GoogleFonts.pacifico(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: kColor3,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: TasksList(
                  // tasks: tasks,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
