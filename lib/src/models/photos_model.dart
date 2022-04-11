class PhotosModel {
  List<_PhotosItemModel> _photosItemResult = [];

  /* PhotosModel.fromJson(Map<String, dynamic> map) {
    _albumId = map['albumId'];
    _id = map['id'];
    _title = map['title'];
    _url = map['url'];
    _thumbnailUrl = map['thumbnailUrl'];
  } */

  PhotosModel.fromJson(List<dynamic> map) {
    List<_PhotosItemModel> temp = [];
    for (int i = 0; i < map.length; i++) {
      _PhotosItemModel photosItem = _PhotosItemModel(map[i]);
      temp.add(photosItem);
    }

    _photosItemResult = temp;
  }

  List<_PhotosItemModel> get photosItem => _photosItemResult;
}

class _PhotosItemModel {
  int _albumId = 0;
  int _id = 0;
  String _title = "";
  String _url = "";
  String _thumbnailUrl = "";

  _PhotosItemModel(map) {
    _albumId = map['albumId'];
    _id = map['id'];
    _title = map['title'];
    _url = map['url'];
    _thumbnailUrl = map['thumbnailUrl'];
  }

  int get albumId => _albumId;
  int get id => _id;
  String get title => _title;
  String get url => _url;
  String get thumbnailUrl => _thumbnailUrl;
}

/* class PhotosModelResponse {
  int statusCode;
  String message;
  List<PhotosModel> photos;

  PhotosModelResponse({this.statusCode, this.message, this.photos});
} */
