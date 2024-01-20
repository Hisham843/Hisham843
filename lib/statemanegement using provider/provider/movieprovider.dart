
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:project_june1/statemanegement%20using%20provider/models/movies.dart';

final List<Movies>MovieList =List.generate(100, (index) => Movies(title: 'Movie $index',
time: '${Random().nextInt(100) +60} minutes'));

class MovieProvider extends ChangeNotifier{

  final List<Movies> _movie=MovieList;
  List<Movies> get movies =>_movie;

  final List<Movies>_wishListMovie=[];
  List<Movies> get moviesWishList =>_wishListMovie;

  void addtoWishList(Movies moviesFromMainPage){
    _wishListMovie.add(moviesFromMainPage);
    notifyListeners();
  }
  void removeFromWishList(Movies removedMovie){
    _wishListMovie.remove(removedMovie);
    notifyListeners();
  }

}