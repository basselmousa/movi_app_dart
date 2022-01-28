import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable{
  final String posterPath;
  final String backdropPath;
  final String title;
  final int id;
  final String releaseDate;
  final String? overview;

  final num voteAverage;

  MovieEntity(
      {required this.posterPath,
     required this.backdropPath,
     required this.title,
     required this.id,
     required this.releaseDate,
        this.overview,
     required this.voteAverage})
  : assert(id != null , "Movie id must not be null");

  @override
  // TODO: implement props
  List<Object?> get props => [id, title];
  @override
  // TODO: implement stringify
  bool? get stringify => true;
}