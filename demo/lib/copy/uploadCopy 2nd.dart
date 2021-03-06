// import 'dart:io';

// import 'package:flutter/material.dart';
// // import 'package:flutter_svg/svg.dart';
// import 'package:image_picker/image_picker.dart';

// class Upload extends StatefulWidget {
//   // final User currentUser;

//   // Upload({this.currentUser});
//   bool isUploading = false;

//   @override
//   _UploadState createState() => _UploadState();
// }

// class _UploadState extends State<Upload> {
//   File file;

//   handleTakePhoto() async {
//     Navigator.pop(context);
//     File file = await ImagePicker.pickImage(
//       source: ImageSource.camera,
//       maxHeight: 675,
//       maxWidth: 960,
//     );
//     setState(() {
//       this.file = file;
//     });
//   }

//   handleChooseFromGallery() async {
//     Navigator.pop(context);
//     File file = await ImagePicker.pickImage(source: ImageSource.gallery);
//     setState(() {
//       this.file = file;
//     });
//   }

//   selectImage(parentContext) {
//     return showDialog(
//       context: parentContext,
//       builder: (context) {
//         return SimpleDialog(
//           title: Text("Create Post"),
//           children: <Widget>[
//             SimpleDialogOption(
//                 child: Text("Photo with Camera"), onPressed: handleTakePhoto),
//             SimpleDialogOption(
//                 child: Text("Image from Gallery"),
//                 onPressed: handleChooseFromGallery),
//             SimpleDialogOption(
//               child: Text("Cancel"),
//               onPressed: () => Navigator.pop(context),
//             )
//           ],
//         );
//       },
//     );
//   }

//   Container buildSplashScreen() {
//     return Container(
//       color: Theme.of(context).accentColor.withOpacity(0.6),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           // SvgPicture.asset('assets/images/upload.svg', height: 260.0),
//           Padding(
//             padding: EdgeInsets.only(top: 20.0),
//             child: RaisedButton(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 child: Text(
//                   "Upload Image",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 22.0,
//                   ),
//                 ),
//                 color: Colors.deepOrange,
//                 onPressed: () => selectImage(context)),
//           ),
//         ],
//       ),
//     );
//   }

//   clearImage() {
//     setState(() {
//       file = null;
//     });
//   }

//   Scaffold buildUploadForm() {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white70,
//         leading: IconButton(
//             icon: Icon(Icons.arrow_back, color: Colors.black),
//             onPressed: clearImage),
//         title: Text(
//           "Post Information",
//           style: TextStyle(color: Colors.black),
//         ),
//         actions: [
//           FlatButton(
//             onPressed: () => print('pressed'),
//             child: Text(
//               "Post",
//               style: TextStyle(
//                 color: Colors.blueAccent,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: ListView(
//         children: <Widget>[
//           Container(
//             height: 220.0,
//             width: MediaQuery.of(context).size.width * 0.8,
//             child: Center(
//               child: AspectRatio(
//                 aspectRatio: 16 / 9,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: FileImage(file),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 10.0),
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.people_alt_sharp,
//               color: Colors.orange,
//               size: 35.0,
//             ),
//             title: Container(
//               width: 250.0,
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: "Write name",
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//           ),
//           Divider(),
//           //

//           ListTile(
//             leading: Icon(
//               Icons.people_alt_sharp,
//               color: Colors.orange,
//               size: 35.0,
//             ),
//             title: Container(
//               width: 250.0,
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: "Write Age",
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//           ),
//           Divider(),
//           //
//           ListTile(
//             leading: Icon(
//               Icons.pin_drop,
//               color: Colors.orange,
//               size: 35.0,
//             ),
//             title: Container(
//               width: 250.0,
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: "Location",
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//           ),
//           // Container(
//           //   width: 200.0,
//           //   height: 100.0,
//           //   alignment: Alignment.center,
//           //   child: RaisedButton.icon(
//           //     label: Text(
//           //       "Use Current Location",
//           //       style: TextStyle(color: Colors.white),
//           //     ),
//           //     shape: RoundedRectangleBorder(
//           //       borderRadius: BorderRadius.circular(30.0),
//           //     ),
//           //     color: Colors.blue,
//           //     onPressed: () => print('get user location'),
//           //     icon: Icon(
//           //       Icons.my_location,
//           //       color: Colors.white,
//           //     ),
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return file == null ? buildSplashScreen() : buildUploadForm();
//   }
// }
