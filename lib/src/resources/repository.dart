import 'package:widget_catalog/src/models/photos_model.dart';
import 'package:widget_catalog/src/resources/photos_api_provider.dart';

class Repository {
  PhotosApiProvider photosApiProvider = PhotosApiProvider();

  Future<PhotosModel> fetchAllPhotos() => photosApiProvider.fetchPhotosList();
}
