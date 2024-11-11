import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';

abstract class HomeLocaleDataSource 
{
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}

class HomeLocaleDataSourceImpl extends HomeLocaleDataSource
{
  @override
  List<BookEntity> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
  
}