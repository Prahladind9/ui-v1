import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//Printing API reponse
void main() => runApp(MoviesApp());

//MovieApp stateless widget at app level
class MoviesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //Adding movie listing widget as app's home screen
      home: MoviesListing(),
    );
  }
}

class MoviesProvider {
  static final String imagePathPrefix = 'https://image.tmdb.org/t/p/w500/';

  //REPLACE: Replace YOUR_API_KEY with your API key
  static final apiKey = "10396dad823f51ef5398f0784371e9e5";

  //Returning JSON data as Map
  static Future<Map> getJson() async {
    final apiEndPoint =
        "http://api.themoviedb.org/3/discover/movie?api_key=${apiKey}&sort_by=popularity.desc";
    final apiResponse = await http.get(apiEndPoint);
    return json.decode(apiResponse.body);
  }
}

//Movie listing widget
class MoviesListing extends StatefulWidget {
  @override
  _MoviesListingState createState() => _MoviesListingState();
}

//State object
class _MoviesListingState extends State<MoviesListing> {
  var movies;

  fetchMovies() async {
    var data = await MoviesProvider.getJson();

    //Updating movies variable with fresh data
    setState(() {
      movies = data['results'];
    });
  }

  //Building main screen
  @override
  Widget build(BuildContext context) {

    //Calling method to fetch movies
    fetchMovies();

    return Scaffold(
      body: SingleChildScrollView(
        //Displaying JSON response data in plain text on main screen
        child: movies != null
            ? Text("TMDB Api response\n $movies")
            : Text("Loading api response"),
      ),
    );
  }
}