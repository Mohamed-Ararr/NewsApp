// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Data/Models/news_model/news_model.dart';

import '../../Core/Failure.dart';
import '../Services/ApiService.dart';
import 'HomeRepo.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, NewsModel>> fetchCity(String cityName) async {
    try {
      Map<String, dynamic> data = await apiService.get(cityName);

      NewsModel newsModel = NewsModel(
        source: data["articles"][0]["source"],
        author: data["articles"][0]["author"],
        title: data["articles"][0]["title"],
        description: data["articles"][0]["description"],
        content: data["articles"][0]["content"],
        publishedAt: data["articles"][0]["publishedAt"],
        url: data["articles"][0]["url"],
        urlToImage: data["articles"][0]["urlToImage"],
      );

      return Right(newsModel);
    } catch (e) {
      debugPrint('Exception: $e');
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
