import 'package:flutter/material.dart';
import '../widget/details_widget/book_details_app_bar.dart';
import '../widget/details_widget/book_details_body.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BookDetailsAppBar(),
      body: BookDetailsBody(
        id: id,
      ),
    );
  }
}
