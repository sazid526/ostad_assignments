import 'package:flutter/material.dart';
import 'package:ostad_assignments/photo_gallery_screen.dart';



class PhotosDetails extends StatelessWidget {
  const PhotosDetails({super.key, required this.photosInfo});

  final PhotosInfo photosInfo;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photos Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.network(photosInfo.url,width: double.infinity,height: 200,),
            Text(photosInfo.title.toString()),
            Center(child: Text(photosInfo.id.toString()))
          ],
        ),
      ),
    );
  }
}