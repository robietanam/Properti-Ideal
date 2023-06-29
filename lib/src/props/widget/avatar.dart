import 'dart:io';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AvatarIcon extends StatefulWidget {
  const AvatarIcon({
    this.imageInheritURL,
    this.filePath,
    Key? key,
  }) : super(key: key);

  // const AvatarIcon({super.key, this.imageInheritURL});
  final String? imageInheritURL;
  final String? filePath;
  @override
  State<AvatarIcon> createState() => _AvatarIconState();
}

class _AvatarIconState extends State<AvatarIcon> {
  dynamic test = const AssetImage("assets/images/noimage.png");

  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: const Text('Pilih media gambar'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);

                      ImageCache().clearLiveImages();
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.image),
                        Text('Galeri'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);

                      ImageCache().clearLiveImages();
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.camera),
                        Text('Kamera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ElevatedButton(
          onPressed: () {
            myAlert();
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: Colors.blue, // <-- Button color
            foregroundColor: Colors.red, // <-- Splash color
          ),
          child: ClipOval(
            child: SizedBox.fromSize(
              size: Size.fromRadius(0.6.dp),
              child: Image(
                fit: BoxFit.cover,
                image: test,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return const Center(
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        Positioned(
          right: 20,
          bottom: 0,
          child: FloatingActionButton(
            mini: true,
            backgroundColor: Colors.grey[300],
            onPressed: () {
              print("edit");
            },
            child: Icon(
              Icons.edit,
              size: 18.sp,
              color: Colors.grey,
            ),
          ),
        )
      ],
    );
  }
}
