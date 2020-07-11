import 'package:cartelera/movie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Cartelera());
}


class Cartelera extends StatelessWidget {
   Movie movie = Parasite;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
             title: Text("info Movie"),
             backgroundColor: Colors.black87,
         ),
         body: Container(
           color: Colors.black87,
           child: ListView(
             children: <Widget>[
             CarteleraTop(movie),
             CarteleraMiddle(movie),
             CarteleraEnd(movie),
           ],
           ),
         ),
       ),
      );
  }
}

class CarteleraTop extends StatelessWidget {
  final Movie movie;

  CarteleraTop(this.movie);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(color: Color.fromARGB(100, 255, 255,255),fontSize: 12);
    return Container(
      child: Padding(
        padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.symmetric(),
                 child: Text(movie.title,style: TextStyle(color: Colors.yellowAccent, fontSize: 30, fontStyle: FontStyle.italic),
                 ),
               ),
               Row(children: <Widget>[
                 Text("${movie.year}",style: textStyle),
                 SizedBox(width: 10),
                 Text(movie.rating,style: textStyle),
                 SizedBox(width: 10),
                 Text("${movie.minute} min",style: textStyle),
                 SizedBox(width: 10),
                 Expanded(child: Text(movie.tags.join(","), style: textStyle,textAlign: TextAlign.right,maxLines: 1,overflow: TextOverflow.ellipsis,)),
               ],)
            ],
          )
     )
    );
  }
}


class CarteleraMiddle extends StatelessWidget {
  final Movie movie;

  CarteleraMiddle(this.movie);

  @override
  Widget build(BuildContext context) {
    final borderSide = BorderSide(color: Color.fromARGB(60, 255, 255, 255),width: 1);
    return Container(
      height: 220,
      decoration: BoxDecoration(
        border: Border(top: borderSide,bottom: borderSide)
      ),
      child :Row(
        crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      new Image.asset(movie.postAssets),
       Expanded(
       child:Padding(
         padding : EdgeInsets.all(10),
         child : Text(movie.plot,style: TextStyle(color: Colors.white,fontSize:10,height: 1.3)),
       ),
       ),
      ],
    ),
    );
  }
}


class CarteleraEnd extends StatelessWidget {
   Movie movie;

  CarteleraEnd(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding : EdgeInsets.all(12),
        child: Table(
          children: [
            TableRow(children:[
              Padding(
                padding: EdgeInsets.all(8),
              child : Text("Cast",style: TextStyle(fontSize: 20,foreground:Paint()..style = PaintingStyle.stroke,height: 1.3)),
              ),
              Padding(
                padding: EdgeInsets.all(8),
              child:Text(movie.cast.join(","),style: TextStyle(fontSize: 12,color: Colors.white,height: 1.3)),
              ),
            ]),
            TableRow(children: [
              Padding(
            padding: EdgeInsets.all(8),
              child : Text("Director",style: TextStyle(fontSize: 20,foreground:Paint()..style = PaintingStyle.stroke,height: 1.3)),
             ),
              Padding(
             padding: EdgeInsets.all(8),
              child : Text("Bong Joon-ho",style: TextStyle(fontSize: 12,color: Colors.white,height: 1.3)),
              ),
            ]),
          ],
        ),
    ),
    );
  }
}