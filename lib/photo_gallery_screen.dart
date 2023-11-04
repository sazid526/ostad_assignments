import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ostad_assignments/photos_screen.dart';


class PhotoGalleryScreen extends StatefulWidget {
  const PhotoGalleryScreen({super.key});

  @override
  State<PhotoGalleryScreen> createState() => _PhotoGalleryScreenState();
}

class _PhotoGalleryScreenState extends State<PhotoGalleryScreen> {
  List<dynamic> PhotosInfoList = [];

  @override
  void initState() {
    getPhotos();
    super.initState();
  }

  void getPhotos() async {
    Response response =
    await get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    print(response.statusCode);

    if (response.statusCode == 200) {
      final  responseData = jsonDecode(response.body);

      setState(() {
        PhotosInfoList = responseData;
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery App"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                    itemCount: PhotosInfoList.length,
                    itemBuilder: (context, index){
                      final photo = PhotosInfoList[index];
                      return ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PhotosDetails(photosInfo: PhotosInfo(photo["albumId"], photo["id"],photo["title"],photo["url"],photo["thumbnailUrl"]),)));
                        },
                        leading: Image.network(photo["thumbnailUrl"]),
                        title: Text(photo["title"].toString()),
                      );
                    })
            ),
          )
        ],
      ),
    );
  }
}

class PhotosInfo{
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  PhotosInfo(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

}