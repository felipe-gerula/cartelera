
class Movie{
  String title,rating,plot,postAssets,director;
  int year,minute;
  List<String> tags;
  List<String> cast;
  Movie({this.title,this.rating,this.plot,this.postAssets,this.year,this.minute,this.tags,this.cast,this.director});
}



// ignore: non_constant_identifier_names
var Parasite = Movie(
  title: "Parasite",
  rating: "R",
  plot: "All unemployed, Ki-taek's family takes peculiar interest in the wealthy and glamorous Parks for their livelihood until they get entangled in an unexpected incident.",
  postAssets:"images/Parasite.jpg",
  year: 2019,
  minute: 133,
  tags: ["underground","korean","psychological thriller"],
  cast: ["Song Kang-ho","Lee Sun-kyun","Cho Yeo-jeong"],
);