import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/use_cases/fetch_features_books_use_case.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> 
{
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());
  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks() async
  {
    emit(FeaturedBooksLoading());
    var result = await featuredBooksUseCase.call();
    result.fold
    (
      (failure) => emit(FeaturedBooksFailure(failure.message)), 
      (books) => emit(FeaturedBooksSuccess(books))
    );
  }
}
