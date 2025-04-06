import 'package:bookly_app/core/constant/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/feature/home/domain/entities/books_entitie.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  // تأكد من تهيئة Flutter قبل أي عمليات غير متزامنة
  WidgetsFlutterBinding.ensureInitialized();
  // تهيئة Hive لـ Flutter
  await Hive.initFlutter();
  // تسجيل الـ Adapter الخاص بـ BooksEntity
  Hive.registerAdapter(BooksEntityAdapter());
  // فتح الـ Box اللي هتستخدمه
  await Hive.openBox<BooksEntity>(kFeaturedBooks);
  await Hive.openBox<BooksEntity>(kNewestBooks);
  // تشغيل التطبيق بعد التهيئة
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
