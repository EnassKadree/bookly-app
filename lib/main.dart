import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/use_cases/fetch_features_books_use_case.dart';
import 'package:bookly_app/Features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:bookly_app/Features/home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/core/utils/functions/setup_locator.dart';
import 'package:bookly_app/core/utils/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'constants.dart';
import 'core/utils/app_router.dart';

void main() async
{
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupLocator();
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider
    (
      providers: 
      [
        BlocProvider(create: (context) => FeaturedBooksCubit(FetchFeaturedBooksUseCase(getIt.get<HomeRepoImpl>()))),
        BlocProvider(create: (context) => NewestBooksCubit(FetchNewestBooksUseCase(getIt.get<HomeRepoImpl>()))),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
