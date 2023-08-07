// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'news_cubit.dart';

abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

class NewsInitial extends NewsState {}

class NewsLoading extends NewsState {}

class NewsSuccess extends NewsState {
  final NewsModel newsModel;
  const NewsSuccess(this.newsModel);
}

class NewsFailure extends NewsState {
  final String errorMsg;
  const NewsFailure(this.errorMsg);
}
