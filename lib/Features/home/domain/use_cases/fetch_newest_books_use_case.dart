import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_cases/no_params_use_case.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>>
{
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call()
  {
    return homeRepo.fetchFeaturedBooks();
  }
}