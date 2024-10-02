part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}

final class NewestBooksLoading extends NewsetBooksState {}

final class NewestBooksFailure extends NewsetBooksState {
  final String errMessage;
  const NewestBooksFailure(this.errMessage);
}

final class NewestBooksSuccess extends NewsetBooksState {
  final List<BookModel> books;
  const NewestBooksSuccess(this.books);
}
