import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomDropDownButton extends StatefulWidget {
  final String item;

  const CustomDropDownButton({Key? key, required this.item}) : super(key: key);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  List<String> items = ['Paypal', 'Google Pay', 'Cartão de crédito'];
  String? selectedItem = "";

  @override
  void initState() {
    super.initState();
    selectedItem = widget.item;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
          color: Color(0xF808080),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1.0, style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          )),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide:
                    const BorderSide(width: 5, color: Color(0xF808080)))),
        value: selectedItem,
        items: items
            .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(item, style: const TextStyle(fontSize: 15))))
            .toList(),
        onChanged: (item) => setState(() => selectedItem = item),
      ),
    );
  }
}
