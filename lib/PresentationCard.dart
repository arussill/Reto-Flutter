// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardPresentationScreen extends StatefulWidget {
  @override
  State<CardPresentationScreen> createState() => _CardPresentationScreenState();
}

var _listId = ['Seleccione una opción', 'C.C', 'Pasaporte', 'C.E', 'Otro'];

String _vista = 'Seleccione una opción';

Widget buildNameTextField() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Nombre y Apellido',
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 60,
        child: TextField(
            keyboardType: TextInputType.text,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
            ],
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.black38,
              ),
              hintText: 'nombre y apellido (campo editable)',
              hintStyle: TextStyle(color: Colors.black38),
            )),
      )
    ],
  );
}

Widget buildRolTextField() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Profesión o Rol',
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 60,
        child: TextField(
            keyboardType: TextInputType.text,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
            ],
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.work,
                color: Colors.black38,
              ),
              hintText: 'profesión o rol (campo editable)',
              hintStyle: TextStyle(color: Colors.black38),
            )),
      )
    ],
  );
}

Widget buildListId() {
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
                color: Colors.black26,
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
            onChanged: null,
            // onChanged: (String? value) {
            //   setState(() {
            //     _vista = value;
            //   });
            // },
            hint: Text(_vista),
            style: TextStyle(color: Colors.black87),

            // TextField(
            // inputFormatters: <TextInputFormatter>[
            //   FilteringTextInputFormatter.digitsOnly
            // ],
            // style: TextStyle(color: Colors.black87),
            // decoration: InputDecoration(
            //   border: InputBorder.none,
            //   contentPadding: EdgeInsets.only(top: 14),
            //   prefixIcon: Icon(
            //     Icons.perm_identity,
            //     color: Colors.black38,
            //   ),
            //   hintText: 'documento de identidad',
            //   hintStyle: TextStyle(color: Colors.black38),
            // )),
          ))
    ],
  );
}

Widget buildIdTextField() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Documento',
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 60,
        child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.perm_identity,
                color: Colors.black38,
              ),
              hintText: 'documento de identidad',
              hintStyle: TextStyle(color: Colors.black38),
            )),
      )
    ],
  );
}

Widget buildSaveBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Guardar'),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      child: Text(
        'Guardar',
        style: TextStyle(
            color: Colors.black38, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget buildDeleteBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Borrar'),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      child: Text(
        'Borrar',
        style: TextStyle(
            color: Colors.black38, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class _CardPresentationScreenState extends State<CardPresentationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xFF73AEF5),
                      Color(0xFF61A4F1),
                      Color(0xFF478DE0),
                      Color(0xFF398AE5),
                    ])),
                child: SingleChildScrollView(
                  //permite scroll vertical
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Tarjeta de presentación',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 50),
                      buildNameTextField(),
                      SizedBox(height: 20),
                      buildRolTextField(),
                      SizedBox(height: 20),
                      buildListId(),
                      SizedBox(height: 20),
                      buildIdTextField(),
                      buildSaveBtn(),
                      buildDeleteBtn()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
