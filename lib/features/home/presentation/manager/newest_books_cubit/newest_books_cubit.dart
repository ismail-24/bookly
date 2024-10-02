import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'newest_books_state.dart';

class NewsetBooksCubit extends Cubit<NewestBooksState> {
  NewsetBooksCubit() : super(NewestBooksInitial());
}
