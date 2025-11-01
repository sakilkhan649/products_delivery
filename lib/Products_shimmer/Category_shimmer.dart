
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Shimmer(
            duration: const Duration(seconds: 3),
            interval: const Duration(seconds: 5),
            color: Colors.white,
            colorOpacity: 0.3,
            enabled: true,
            direction: const ShimmerDirection.fromLTRB(),
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                height: 40,
                width: 70,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Shimmer(
            duration: const Duration(seconds: 3),
            interval: const Duration(seconds: 5),
            color: Colors.white,
            colorOpacity: 0.3,
            enabled: true,
            direction: const ShimmerDirection.fromLTRB(),
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                height: 40,
                width: 70,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Shimmer(
            duration: const Duration(seconds: 3),
            interval: const Duration(seconds: 5),
            color: Colors.white,
            colorOpacity: 0.3,
            enabled: true,
            direction: const ShimmerDirection.fromLTRB(),
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                height: 40,
                width: 70,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Shimmer(
            duration: const Duration(seconds: 3),
            interval: const Duration(seconds: 5),
            color: Colors.white,
            colorOpacity: 0.3,
            enabled: true,
            direction: const ShimmerDirection.fromLTRB(),
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                height: 40,
                width: 70,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Shimmer(
            duration: const Duration(seconds: 3),
            interval: const Duration(seconds: 5),
            color: Colors.white,
            colorOpacity: 0.3,
            enabled: true,
            direction: const ShimmerDirection.fromLTRB(),
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                height: 40,
                width: 70,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Shimmer(
            duration: const Duration(seconds: 3),
            interval: const Duration(seconds: 5),
            color: Colors.white,
            colorOpacity: 0.3,
            enabled: true,
            direction: const ShimmerDirection.fromLTRB(),
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                height: 40,
                width: 70,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
