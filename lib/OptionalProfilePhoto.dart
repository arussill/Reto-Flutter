// // ignore_for_file: file_names, prefer_const_constructors, prefer_typing_uninitialized_variables

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class OptionalProfilePhoto extends StatefulWidget {
//   const OptionalProfilePhoto({Key? key}) : super(key: key);

//   @override
//   State<OptionalProfilePhoto> createState() => _OptionalProfilePhotoState();
// }

// class _OptionalProfilePhotoState extends State<OptionalProfilePhoto> {
//   //Variable que almacena la imagen seleccionada
//   static var imageFile;

//   // Instancia de la clase ImagePicker()
//   final ImagePicker _picker = ImagePicker();

//   void takePhoto(ImageSource source) async {
//     final XFile? image = await _picker.pickImage(source: source);
//     if (image != null) {
//       setState(() {
//         imageFile = image;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 100,
//         width: 100,
//         margin: EdgeInsets.symmetric(
//           horizontal: 20,
//           vertical: 20,
//         ),
//         child: Column(
//           children: <Widget>[
//             Text('Seleccionar foto de perfil'),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 TextButton.icon(
//                   icon: Icon(Icons.photo_camera),
//                   onPressed: () {
//                     takePhoto(ImageSource.camera);
//                   },
//                   label: Text('Tomar foto'),
//                 ),
//                 TextButton.icon(
//                   icon: Icon(Icons.image),
//                   onPressed: () {
//                     takePhoto(ImageSource.gallery);
//                   },
//                   label: Text('Seleccionar foto'),
//                 )
//               ],
//             )
//           ],
//         ));
//   }
// }
