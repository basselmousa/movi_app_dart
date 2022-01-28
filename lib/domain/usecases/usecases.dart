import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/entities/app_error.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';

abstract class UseCases<Type, Param> {
  Future<Either<AppError,Type>> call (Param param);
}