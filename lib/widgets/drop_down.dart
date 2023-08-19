import 'package:flutter/material.dart';



class CustomTextFieldWithDropdown extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final List<String> dropdownItems;
  String selectedDropdownValue; // Not final
  final ValueChanged<String> onDropdownChanged;

  CustomTextFieldWithDropdown({
    required this.controller,
    required this.labelText,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    required this.dropdownItems,
    required this.selectedDropdownValue,
    required this.onDropdownChanged,
  });

  @override
  _CustomTextFieldWithDropdownState createState() =>
      _CustomTextFieldWithDropdownState();
}

class _CustomTextFieldWithDropdownState
    extends State<CustomTextFieldWithDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // Set your desired width
      height: 50,
      child: TextFormField(
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
          suffixIcon: DropdownButton<String>(
            value: widget.selectedDropdownValue,
            onChanged: (newValue) {
              setState(() {
                widget.selectedDropdownValue = newValue!;
                widget.controller.text = newValue; // Update the text field's value
                widget.onDropdownChanged(newValue);
              });
            },
            items: widget.dropdownItems.map<DropdownMenuItem<String>>(
                  (String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              },
            ).toList(),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
      ),
    );
  }
}


