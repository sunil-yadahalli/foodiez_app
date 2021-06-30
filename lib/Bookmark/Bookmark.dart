import 'package:flutter/material.dart';
import 'package:foodiez_app/Bookmark/BookmarkModel.dart';
import 'package:foodiez_app/Bookmark/BookmarkService.dart';

class Bookmark extends StatefulWidget {
  @override
  _BookmarkState createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  BookmarkService _bookmarkService = BookmarkService();
  List<BookmarkModel> bookmarkModel;

  @override
  void initState() {
    bookmarkModel = _bookmarkService.findAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Bookmark',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: bookmarkModel.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                        image: AssetImage(bookmarkModel[index].image),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bookmarkModel[index].time,
                        style: TextStyle(color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          bookmarkModel[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Text(
                        bookmarkModel[index].place,
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                      Text(
                        bookmarkModel[index].area,
                        style: TextStyle(color: Colors.grey[700]),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          ' 4.8 ',
                          style: TextStyle(
                            fontSize: 18,
                            backgroundColor: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Icon(
                        Icons.bookmark,
                        color: Colors.blue,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
