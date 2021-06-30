import 'package:foodiez_app/Bookmark/BookmarkModel.dart';

class BookmarkService {
  final List<BookmarkModel> data = [
    BookmarkModel(
      id: 1,
      name: "Biriyani",
      image: "assets/biriyani.jpg",
      time: '11:30 am to 11:00 pm',
      place: 'Jakkur Layout',
      area: 'Asia, India',
    ),
    BookmarkModel(
      id: 2,
      name: "Dal",
      image: "assets/dal.jpg",
      time: '11:30 am to 11:00 pm',
      place: 'Jakkur Layout',
      area: 'Asia, India',
    ),
    BookmarkModel(
      id: 3,
      name: "KFC",
      image: "assets/kfc.jpg",
      time: '11:30 am to 11:00 pm',
      place: 'Jakkur Layout',
      area: 'Asia, India',
    ),
  ];
  List<BookmarkModel> findAll() {
    return data;
  }
}
