import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/constants.dart';

import '../../../../core/utils/api_service.dart';
import '../../../../core/utils/functions/save_books_data.dart';

abstract class HomeRemoteDataSource 
{
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource
{
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async
  {
    var data = await apiService.get('volumes?q=programming&filtering=free-ebooks');
    List<BookEntity> books = getBooksList(data);

    saveBooksData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async
  {
    var data = await apiService.get('volumes?q=programming&filtering=free-ebooks&sorting=newest');
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books, kNewestBox);
    return books;
  }
  
  List<BookEntity> getBooksList(Map<String, dynamic> data) 
  {
    List<BookEntity> books = [];
    for(var book in data['items'])
    {
      books.add(BookModel.fromJson(book));
    }
    return books;
  }
}