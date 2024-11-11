import 'package:bookly_app/Features/home/data/data%20sources/home_locale_data_source.dart';
import 'package:bookly_app/Features/home/data/data%20sources/home_remote_data_source.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo
{
  final HomeLocaleDataSource homeLocaleDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl({required this.homeLocaleDataSource, required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async
  {
    try
    {
      List<BookEntity> books;
      books = homeLocaleDataSource.fetchFeaturedBooks();
      if(books.isNotEmpty)
      {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    }
    catch(e)
    {
      if(e is DioException)
      { return left(ServerFailure.fromDioError(e)); }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async{
    try
    {
      List<BookEntity> books;
      books = homeLocaleDataSource.fetchNewestBooks();
      if(books.isNotEmpty)
      {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    }
    catch(e)
    {
      if(e is DioException)
      { return left(ServerFailure.fromDioError(e)); }
      return left(ServerFailure(e.toString()));
    }
  }

}