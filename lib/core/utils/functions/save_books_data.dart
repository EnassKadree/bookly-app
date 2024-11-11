  import 'package:hive/hive.dart';

import '../../../Features/home/domain/entities/book_entity.dart';
import '../../../constants.dart';

void saveBooksData(List<BookEntity> books, String box) {
    var box = Hive.box(kFeaturedBox);
    box.addAll(books);
  }