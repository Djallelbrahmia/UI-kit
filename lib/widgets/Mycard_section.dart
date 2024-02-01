import 'package:flutter/material.dart';
import 'package:uikitresponsive/utils/app_styles.dart';
import 'package:uikitresponsive/widgets/cards_page_view.dart';
import 'package:uikitresponsive/widgets/dots_indicator.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int _currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      _currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My card',
            style: AppStyles.styleMedium20(context)
                .copyWith(color: Color(0xFF064060)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          pageController: pageController,
        ),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(
          currentPageIndex: _currentPage,
        )
      ],
    );
  }
}
