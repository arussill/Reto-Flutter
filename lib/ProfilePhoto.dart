// ignore_for_file: file_names, prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePhoto extends StatefulWidget {
  const ProfilePhoto({Key? key}) : super(key: key);

  @override
  State<ProfilePhoto> createState() => _ProfilePhotoState();
}

class _ProfilePhotoState extends State<ProfilePhoto> {
  //Variable que almacena la imagen seleccionada
  XFile imageFile = XFile("");

// Instancia de la clase ImagePicker()
  final ImagePicker _picker = ImagePicker();

  void takePhoto(ImageSource source) async {
    final XFile? image = await _picker.pickImage(source: source);
    if (image != null) {
      setState(() {
        imageFile = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: <Widget>[
      CircleAvatar(
          radius: 70,
          backgroundImage: imageFile != null
              ? AssetImage('polar.png')
              : Image.file((imageFile) as File).image),
      Positioned(
        bottom: -3,
        right: 10,
        child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: ((builder) => OptionalProfilePhoto()),
              );
            },
            child: Icon(
              Icons.add_a_photo,
              size: 30,
              color: Color.fromRGBO(0, 0, 0, 1),
            )),
      )
    ]);
  }

  Widget OptionalProfilePhoto() {
    return Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: <Widget>[
            Text('Seleccionar foto de perfil'),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton.icon(
                  icon: Icon(Icons.photo_camera),
                  onPressed: () {
                    takePhoto(ImageSource.camera);
                  },
                  label: Text('Tomar foto'),
                ),
                TextButton.icon(
                  icon: Icon(Icons.image),
                  onPressed: () {
                    takePhoto(ImageSource.gallery);
                  },
                  label: Text('Seleccionar foto'),
                )
              ],
            )
          ],
        ));
  }
}
