import 'package:flutter/material.dart';
import 'package:json_parsing/8.1/provider/json_data_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    PhotoProvider photoProvider = Provider.of<PhotoProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'Photo JSON Data',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body:
            Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: photoProvider.photoList.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.black,
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(8.0),
                  title: Text(
                    photoProvider.photoList[index].title,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  leading: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                            photoProvider.photoList[index].url),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
