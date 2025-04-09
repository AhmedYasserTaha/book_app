import 'package:bookly_app/core/constant/constants.dart';
import 'package:bookly_app/core/utils/api.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/function/set_up_service_locator.dart';
import 'package:bookly_app/feature/home/data/data_source/home_local_data_source.dart';
import 'package:bookly_app/feature/home/data/data_source/home_remote_data_source.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/feature/home/domain/entities/books_entitie.dart';
import 'package:bookly_app/feature/home/domain/usecase/fetch_featrued_book_use_case.dart';
import 'package:bookly_app/feature/home/domain/usecase/fetch_nwes_books_use_case.dart';
import 'package:bookly_app/feature/home/presentation/manegr/featured_books_cubit/feature_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/manegr/news_books_cubit/news_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  // تأكد من تهيئة Flutter قبل أي عمليات غير متزامنة
  WidgetsFlutterBinding.ensureInitialized();
  // تهيئة Hive لـ Flutter
  await Hive.initFlutter();
  // تسجيل الـ Adapter الخاص بـ BooksEntity
  Hive.registerAdapter(BooksEntityAdapter());
  setUPServiceLecator();
  // فتح الـ Box اللي هتستخدمه
  await Hive.openBox<BooksEntity>(kFeaturedBooks);
  await Hive.openBox<BooksEntity>(kNewestBooks);
  // تشغيل التطبيق بعد التهيئة
  runApp(const BooklyApp());
}

final getIt = GetIt.instance;

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeatureBooksCubit(
              FetchFeatruedBookUseCase(homeRepo: getIt.get<HomeRepoImpl>()),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return NewsBooksCubit(
              FetchFNewsBooksUseCase(homeRepo: getIt.get<HomeRepoImpl>()),
            );
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
