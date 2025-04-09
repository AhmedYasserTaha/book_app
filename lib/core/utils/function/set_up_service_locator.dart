import 'package:bookly_app/core/utils/api.dart';
import 'package:bookly_app/feature/home/data/data_source/home_local_data_source.dart';
import 'package:bookly_app/feature/home/data/data_source/home_remote_data_source.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/main.dart';
import 'package:dio/dio.dart';

void setUPServiceLecator() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImpl(ApiService(Dio())),
      homeLocalDataSource: HomeLocaleDataSourceImpl(),
    ),
  );
}
