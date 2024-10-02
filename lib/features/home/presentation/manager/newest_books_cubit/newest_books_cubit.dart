import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'newest_books_state.dart';

class NewsetBooksCubit extends Cubit<NewestBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(NewestBooksLoading());

    var result = await homeRepo.fetchNewestBooks();

    result.fold(
      (failure) {
        emit(
          NewestBooksFailure(failure.errMessage),
        );
      },
      (books) {
        emit(
          NewestBooksSuccess(books),
        );
      },
    );
  }
}
