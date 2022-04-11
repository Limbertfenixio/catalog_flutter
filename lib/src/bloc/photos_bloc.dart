import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';
import 'package:widget_catalog/src/models/photos_model.dart';
import 'package:widget_catalog/src/resources/repository.dart';

class PhotosBloc {
  Repository _repository = Repository();
  final _photosFetcher = PublishSubject<PhotosModel>();

  Stream<PhotosModel> get allPhotos => _photosFetcher.stream;

  fetchAllPhotos() async {
    print('bloc');
    PhotosModel photosModel = await _repository.fetchAllPhotos();
    _photosFetcher.sink.add(photosModel);
  }

  dispose() {
    _photosFetcher.close();
  }
}

final photosBloc = PhotosBloc();
