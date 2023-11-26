import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.count, required this.rating});

  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width *.32,
      child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            FontAwesomeIcons.solidStar,
            size: 14,
            color: Color(0xffFFDD4F),
          ),
          const SizedBox(
            width: 6.3,
          ),
          Text(
           rating.toString(),
            style: Styles.textStyle16,
          ),
          const SizedBox(
            width: 5,
          ),
          Opacity(
            opacity: .5,
            child: Text(
              '($count)',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
