import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ProductShimmer extends StatelessWidget {
  const ProductShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
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
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
      
                SizedBox(width: 10),
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
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
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
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
      
                SizedBox(width: 10),
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
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
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
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
      
                SizedBox(width: 10),
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
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
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
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
      
                SizedBox(width: 10),
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
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
      
              ],
            ),
          ],
        ),
      ),
    );
  }
}
