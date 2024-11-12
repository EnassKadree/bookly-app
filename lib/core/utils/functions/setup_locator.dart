import 'package:bookly_app/Features/home/data/data%20sources/home_locale_data_source.dart';
import 'package:bookly_app/Features/home/data/data%20sources/home_remote_data_source.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var getIt = GetIt.instance;

void setupLocator()
{
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl
  (
    homeLocaleDataSource: HomeLocaleDataSourceImpl(), 
    homeRemoteDataSource: HomeRemoteDataSourceImpl(getIt.get<ApiService>())
  ));
}