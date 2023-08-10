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
  Future<Either<Failure, Map<String, dynamic>>> fetchNews(String query) async {
    try {
      Map<String, dynamic> data = await apiService.get(query);

      return Right(data);
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
