// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'DropDownBtn.dart';
import 'ProfilePhoto.dart';

class CardPresentationScreen extends StatefulWidget {
  @override
  State<CardPresentationScreen> createState() => _CardPresentationScreenState();
}

class _CardPresentationScreenState extends State<CardPresentationScreen> {
  final _nameController = TextEditingController();
  final _rolController = TextEditingController();
  final _idController = TextEditingController();

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
                      ProfilePhoto(),
                      SizedBox(height: 50),
                      buildNameTextField(),
                      SizedBox(height: 20),
                      buildRolTextField(),
                      SizedBox(height: 20),
                      DropDownBtn(),
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
              controller: _nameController,
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
              controller: _rolController,
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
              controller: _idController,
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
        onPressed: () => {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('¿Está seguro de guardar los cambios?'),
              actions: <Widget>[
                FlatButton(
                  child: Text('Cancelar'),
                  onPressed: () => {print("Cancelado"), Navigator.pop(context)},
                ),
                FlatButton(
                  child: Text('Guardar'),
                  onPressed: () {
                    var _name = _nameController.text;
                    var _rol = _rolController.text;
                    var _id = _idController.text;
                    print("Guardado");
                    print("Nombre y Apellido: $_name");
                    print("Profesión o Rol: $_rol");
                    print("Documento: $_id");
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          )
        },
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
      padding: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => {
          _nameController.clear(),
          _rolController.clear(),
          _idController.clear(),
        },
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
}
