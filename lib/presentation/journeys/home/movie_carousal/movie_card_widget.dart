import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/common/extensions/size_extentions.dart';
import 'package:movie_app/data/core/api_constants_file.dart';

import '../../../../common/constants/size_constants.dart';

class MovieCardWidget extends StatelessWidget {
  final int movieId;
  final String posterPath;

  const MovieCardWidget({
    Key? key,
    required this.movieId,
    required this.posterPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 32,
      borderRadius: BorderRadius.circular(Sizes.dimen_16.h),
      child: GestureDetector(
        onTap: () =>{},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(Sizes.dimen_16.h),
          child: CachedNetworkImage(
                imageUrl: '${ApiConstants.BASE_IMAGE_URL}$posterPath',
                fit: BoxFit.cover,
          ),
        )
      )
    );
  }
}
