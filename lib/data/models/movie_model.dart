import 'package:movie_app/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  final String originalTitle;
  final bool adult;
  final String backdropPath;
  final int id;
  final List<int> genreIds;
  final String title;
  final int voteCount;
  final double voteAverage;
  final bool video;
  final String posterPath;
  final String? overview;
  final String releaseDate;
  final String originalLanguage;
  final double popularity;
  final String mediaType;

  MovieModel(
      {required this.originalTitle,
      required this.adult,
      required this.backdropPath,
      required this.id,
      required this.genreIds,
      required this.title,
      required this.voteCount,
      required this.voteAverage,
      required this.video,
      required this.posterPath,
      required this.overview,
      required this.releaseDate,
      required this.originalLanguage,
      required this.popularity,
      required this.mediaType})
      : super(
            title: title,
            backdropPath: backdropPath,
            id: id,
            posterPath: posterPath,
            releaseDate: releaseDate,
            voteAverage: voteAverage,
            overview: overview);

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      originalTitle: json['original_title'],
      adult: json['adult'],
      backdropPath: json['backdrop_path'] ??'',
      id: json['id'],
      genreIds: json['genre_ids'].cast<int>(),
      title: json['title'],
      voteCount: json['vote_count'],
      voteAverage: json['vote_average']?.toDouble() ?? 0.0,
      video: json['video'],
      posterPath: json['poster_path'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      originalLanguage: json['original_language'],
      popularity: json['popularity']?.toDouble() ?? 0.0,
      mediaType: json['media_type'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['original_title'] = this.originalTitle;
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['id'] = this.id;
    data['genre_ids'] = this.genreIds;
    data['title'] = this.title;
    data['vote_count'] = this.voteCount;
    data['vote_average'] = this.voteAverage;
    data['video'] = this.video;
    data['poster_path'] = this.posterPath;
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    data['original_language'] = this.originalLanguage;
    data['popularity'] = this.popularity;
    data['media_type'] = this.mediaType;
    return data;
  }
}
