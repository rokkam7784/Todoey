import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoy/Constants.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function checkBoxCallBack;
  final Function longPressCallback;

  TasksTile(
      {this.isChecked,
      this.taskTile,
      this.checkBoxCallBack,
      this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTile,
        style: GoogleFonts.libreBaskerville(
            color: Colors.white,
            wordSpacing: 3,
            fontSize: 18,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        checkColor: Colors.white,
        activeColor: kColor2,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}

//TaskCheckBox(
//           checkBoxState: isChecked, toggleCheckBox: ),
//
// class TaskCheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function toggleCheckBox;
//
//   TaskCheckBox({this.checkBoxState, this.toggleCheckBox});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       checkColor: Colors.white,
//       activeColor: kColor2,
//       value: checkBoxState,
//       onChanged: toggleCheckBox,
//     );
//   }
// }
