import 'package:flutter/material.dart';
import 'package:project_june1/statemanegement%20using%20provider/provider/movieprovider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider<MovieProvider>(
      create: (BuildContext context) =>MovieProvider(),
  child: MaterialApp(
    home: MovieMain(),
  ),));
}
class MovieMain extends StatelessWidget {
  const MovieMain({super.key});

  @override
  Widget build(BuildContext context) {
    var wishmovies =context.watch<MovieProvider>().moviesWishList;
     var movies =context.watch<MovieProvider>().movies;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Movies"
        ),
      ),
      body: Column(
         children: [
           ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.favorite_border), label: Text("Goto WishList ")),
           Expanded(child: ListView.builder(itemCount:movies.length,
               itemBuilder: (context,index){

             final currentMovie =movies[index];
             return Card(
             child: ListTile(
               title: Text(currentMovie.title),
               subtitle: Text(currentMovie.time!),
               trailing: IconButton(
                 icon: Icon(
                   Icons.favorite_border,
                   color: wishmovies.contains(currentMovie)
                   ?Colors.red
                   :Colors.white,
                 ),
                 onPressed: (){
                   if(!wishmovies.contains(currentMovie)){
                     context
                     .read<MovieProvider>()
                         .addtoWishList(currentMovie);
                   }else{
                     context
                     .read<MovieProvider>()
                         .removeFromWishList(currentMovie);
                   }
                 },
               ),
             ),
             );
    }))
         ],
      ),
    );
  }
}
