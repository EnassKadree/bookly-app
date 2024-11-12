part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksLoading extends NewestBooksState {}
final class NewestBooksFailure extends NewestBooksState 
{
  final String message;

  NewestBooksFailure(this.message);
}
final class NewestBooksSuccess extends NewestBooksState 
{
  final List<BookEntity> books;

  NewestBooksSuccess(this.books);
}
