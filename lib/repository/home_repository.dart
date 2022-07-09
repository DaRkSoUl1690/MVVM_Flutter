import 'package:mvvm_architecture/data/network/base_api_service.dart';
import 'package:mvvm_architecture/data/network/network_api_service.dart';
import 'package:mvvm_architecture/model/moviemodel.dart';
import 'package:mvvm_architecture/res/app_url.dart';

class HomeRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  Future<MovieListModel> fetchMoviesList() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.moviesListEndPoint);
      return response = MovieListModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
