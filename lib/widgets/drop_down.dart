import 'package:flutter/material.dart';



class CustomDropdownTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? labelText;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final List<String> dropdownItems;
  String? selectedDropdownValue;
  final ValueChanged<String> onDropdownChanged;

  CustomDropdownTextField({
    required this.controller,
    this.labelText,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    required this.dropdownItems,
    this.selectedDropdownValue,
    required this.onDropdownChanged,
  });

  @override
  _CustomDropdownTextFieldState createState() =>
      _CustomDropdownTextFieldState();
}

class _CustomDropdownTextFieldState
    extends State<CustomDropdownTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // Set your desired width
      height: 50,
      child: TextFormField(
        readOnly: true,
        controller: widget.controller,
        obscureText: widget.obscureText,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),

          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 5),
            child:  TextField(
              controller: widget.controller,
              readOnly: true,
              onTap: _showDropdownMenu,
              decoration: InputDecoration(
                labelText: widget.labelText,
                hintText: widget.hintText,
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),

            ),
          ),
            // DropdownButton<String>(
            //   value: widget.selectedDropdownValue,
            //   onChanged: (newValue) {
            //     setState(() {
            //       //widget.selectedDropdownValue = newValue!;
            //       widget.controller.text = newValue!; // Update the text field's value
            //       widget.onDropdownChanged(newValue);
            //     });
            //   },
            //   items: widget.dropdownItems.map<DropdownMenuItem<String>>(
            //         (String value) {
            //       return DropdownMenuItem<String>(
            //         value: value,
            //         child: Text(value),
            //       );
            //     },
            //   ).toList(),
            // ),

          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
      ),
    );
  }
  void _showDropdownMenu() async {
    final value = await showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: widget.dropdownItems.map((item) {
              return ListTile(
                contentPadding: EdgeInsets.all(5),
                tileColor: Colors.white,
                title: Text(item),
                onTap: () {
                  Navigator.pop(context, item);
                },
              );
            }).toList(),
          ),
        );
      },
    );

    if (value != null) {
      setState(() {
        widget.selectedDropdownValue = value;
        widget.controller.text = value;
        widget.onDropdownChanged(value);
      });
    }
  }
}





// import 'package:flutter/material.dart';



// class CustomDropdownTextField extends StatefulWidget {
//   final TextEditingController controller;
//   final String labelText;
//   final String hintText;
//   final List<String> dropdownItems;
//   String selectedDropdownValue;
//   final ValueChanged<String> onDropdownChanged;
//
//   CustomDropdownTextField({
//     required this.controller,
//     required this.labelText,
//     required this.hintText,
//     required this.dropdownItems,
//     required this.selectedDropdownValue,
//     required this.onDropdownChanged,
//   });
//
//   @override
//   _CustomDropdownTextFieldState createState() => _CustomDropdownTextFieldState();
// }

// class _CustomDropdownTextFieldState extends State<CustomDropdownTextField> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300, // Set your desired width
//        height: 50,
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               controller: widget.controller,
//               readOnly: true,
//               onTap: _showDropdownMenu,
//               decoration: InputDecoration(
//                 labelText: widget.labelText,
//                 hintText: widget.hintText,
//                 filled: true,
//                 fillColor: Colors.grey[200],
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//             ),
//           ),
//           IconButton(
//             icon: Icon(Icons.arrow_drop_down),
//             onPressed: _showDropdownMenu,
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _showDropdownMenu() async {
//     final value = await showDialog<String>(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: widget.dropdownItems.map((item) {
//               return ListTile(
//                 title: Text(item),
//                 onTap: () {
//                   Navigator.pop(context, item);
//                 },
//               );
//             }).toList(),
//           ),
//         );
//       },
//     );
//
//     if (value != null) {
//       setState(() {
//         widget.selectedDropdownValue = value;
//         widget.controller.text = value;
//         widget.onDropdownChanged(value);
//       });
//     }
//   }
// }




