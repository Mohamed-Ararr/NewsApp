import "package:dartz/dartz.dart";
import "package:newsapp/Data/Models/news_model/news_model.dart";

import "../../Core/Failure.dart";

abstract class HomeRepo {
  Future<Either<Failure, Map<String, dynamic>>>? fetchNews(String query);
}
