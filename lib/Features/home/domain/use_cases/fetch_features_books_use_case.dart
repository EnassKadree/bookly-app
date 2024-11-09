import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

class FetchFeaturesBooksUseCase 
{
  final HomeRepo homeRepo;

  FetchFeaturesBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks()
  {
    // here I can do something before triggering the function
    // for example: check permission..
    return homeRepo.fetchFeaturedBooks();
  }
}