import 'package:flutter/foundation.dart';
import 'package:mvvm_architecture/data/response/api_response.dart';
import 'package:mvvm_architecture/model/moviemodel.dart';
import 'package:mvvm_architecture/repository/home_repository.dart';

class HomeViewViewModel with ChangeNotifier {

  final _myRepo = HomeRepository();

  ApiResponse<MovieListModel> moviesList = ApiResponse.loading();

  setMoviesList(ApiResponse<MovieListModel> response){
    moviesList = response ;
    notifyListeners();
  }


  Future<void> fetchMoviesListApi ()async{

    setMoviesList(ApiResponse.loading());

    _myRepo.fetchMoviesList().then((value){

      setMoviesList(ApiResponse.completed(value));

    }).onError((error, stackTrace){

      setMoviesList(ApiResponse.error(error.toString()));

    });
  }


}
