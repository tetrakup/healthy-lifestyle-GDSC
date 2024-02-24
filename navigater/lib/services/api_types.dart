import 'package:flutter/material.dart';

  final String bookbaseUrl = "https://www.googleapis.com/books/v1/volumes?q=flowers&filter=free-ebooks&key=AIzaSyAKHQ1chKwJV0yUmIOiAWcfgkZAF4LH32g";

@immutable
class ApiUrl {
  const ApiUrl._();
  // Home
  static const String bestseller = 'https://www.googleapis.com/books/v1/volumes?q=bestseller';
  static const String trending = 'https://www.googleapis.com/books/v1/volumes?q=trending';

  // Search
  static const String googleApis = 'www.googleapis.com';
  static const String v1Volumes = '/books/v1/volumes';

  // Category
  static const String category = 'https://www.googleapis.com/books/v1/volumes?q=red';
  static const String categoryDetail = 'https://www.googleapis.com/books/v1/volumes?q=flutter+subject:';
}