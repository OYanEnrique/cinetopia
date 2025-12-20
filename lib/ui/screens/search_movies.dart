import 'package:cinetopia/app/viewmodels/search_movies_viewmodel.dart';
import 'package:cinetopia/ui/components/movie_card.dart';
import 'package:flutter/material.dart';
import 'package:cinetopia/ui/screens/movie_details.dart';

class SearchMovies extends StatefulWidget {
  @override
  State<SearchMovies> createState() => _SearchMoviesState();
}

class _SearchMoviesState extends State<SearchMovies> {
  final SearchMoviesViewmodel viewmodel = SearchMoviesViewmodel();

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future : viewmodel.getMovie(textController.text),
        builder: (context, snapshot){
          if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Image.asset("assets/movie.png", height: 80, width: 80,),
                  ),),
                  SliverToBoxAdapter(child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Text("Filmes populares",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                ),
                SliverToBoxAdapter(child: Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: TextField(
                    controller:textController,
                    onEditingComplete: () {
                      FocusScope.of(context).unfocus();
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      hintText: 'Pesquisar',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                    ),
                  ),
                ),
                ),
                SliverList.builder(
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieDetails(movie: viewmodel.moviesList[index]),
                        ),
                      );
                    },
                    child: Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: MovieCard(
                      movie: viewmodel.moviesList[index],
                    ),
                                    ),
                  ), 
                itemCount: viewmodel.moviesList.length,
                ),
              ]
              ),
            );
          } else {
          return Center(child: CircularProgressIndicator());
          }
        },
    );
  }
}