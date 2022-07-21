// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';

class DropDownBtn extends StatefulWidget {
  DropDownBtn({Key? key}) : super(key: key);

  @override
  State<DropDownBtn> createState() => _DropDownBtnState();
}

class _DropDownBtnState extends State<DropDownBtn> {
  final _listId = ['Seleccione una opción', 'C.C', 'Pasaporte', 'C.E', 'Otro'];

  String _vista = 'Seleccione una opción';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            height: 60,
            child: DropdownButton(
              isExpanded: true,
              underline: Container(),
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black38,
              ),
              value: _vista,
              items: _listId.map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.black87),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _vista = newValue!;
                });
              },
              hint: Text(_vista),
              style: TextStyle(color: Colors.black87),
            ))
      ],
    );
  }
}
