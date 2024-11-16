import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/featured_books/featured_books_cubit.dart';
import 'featured_list_view.dart';

class FeaturedBooksListViewBuilder extends StatelessWidget {
  const FeaturedBooksListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) 
      {
        if(state is FeaturedBooksSuccess)
        {return FeaturedBooksListView(books: state.books,);}
        if(state is FeaturedBooksFailure)
        {return Center(child: Text(state.message));}
        else
        {return const Center(child: CircularProgressIndicator());}
      },
    );
  }
}