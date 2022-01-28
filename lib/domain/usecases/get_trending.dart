import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/entities/app_error.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/domain/entities/no_params.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';
import 'package:movie_app/domain/usecases/usecases.dart';

class GetTrending extends UseCases<List<MovieEntity>?,NoParams> {
  final MovieRepository movieRepository;

  GetTrending(this.movieRepository);

  @override
  Future<Either<AppError, List<MovieEntity>?>> call(NoParams param) async{
    // TODO: implement call
    return await movieRepository.getTrending();
  }

  // Future<Either<AppError,List<MovieEntity>?>> call () async{
  //   return await movieRepository.getTrending();
  // }
}