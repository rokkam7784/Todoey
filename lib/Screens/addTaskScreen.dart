import 'package:flutter/material.dart';
import 'package:todoy/taskData.dart';

import '../Constants.dart';
import 'package:google_fonts/google_fonts.dart';

import '../task.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xFF5A141C),
      child: Container(
        padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
        decoration: BoxDecoration(
          color: kColor3,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Add Task',
              style: GoogleFonts.libreBaskerville(
                color: Colors.white,
                wordSpacing: 3,
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              // autofocus: true,
              textAlign: TextAlign.center,
              style: GoogleFonts.libreBaskerville(
                color: Colors.white,
                wordSpacing: 3,
                fontSize: 23,
              ),
              decoration: InputDecoration(
                isDense: true,
                fillColor: Colors.white,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kColor2),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kColor2),
                ),
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kColor2, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  // print(newTaskTitle)

                  //addCallBack(newTaskTitle); //----------1

                  // --------------2
                  // final task = Task(name: newTaskTitle);
                  // Provider.of<TaskData>(context).tasks.add(task);
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                child: Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(70, 20, 70, 20),
                      child: Text(
                        'Add',
                        style: GoogleFonts.libreBaskerville(
                          color: Colors.white,
                          wordSpacing: 3,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
