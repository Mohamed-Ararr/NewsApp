import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:newsapp/Core/Failure.dart';
import 'package:newsapp/Data/HomeRepo/HomeRepoImpl.dart';
import 'package:newsapp/Data/Models/news_model/news_model.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.homeRepoImpl) : super(NewsInitial());

  HomeRepoImpl homeRepoImpl;

  fetchNews(String query) async {
    emit(NewsLoading());
    Either<Failure, Map<String, dynamic>> news =
        await homeRepoImpl.fetchNews(query);

    news.fold(
      (failure) => emit(NewsFailure(failure.errorMsg)),
      (success) => NewsSuccess(success),
    );
  }
}
