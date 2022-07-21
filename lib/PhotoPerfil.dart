// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PhotoPerfil extends StatefulWidget {
  const PhotoPerfil({Key? key}) : super(key: key);

  @override
  State<PhotoPerfil> createState() => _PhotoPerfilState();
}

class _PhotoPerfilState extends State<PhotoPerfil> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: const <Widget>[
      CircleAvatar(radius: 70, backgroundImage: AssetImage('polar.png')),
    ]);
  }
}
