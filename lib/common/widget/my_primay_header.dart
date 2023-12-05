import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import 'my_circular_container.dart';
import 'my_curve_edges.dart';

class MyPrimaryHeaderContainer extends StatelessWidget {
  const MyPrimaryHeaderContainer({
    super.key,
    required child,
  });

  @override
  Widget build(BuildContext context) {
    return MyCurveEdgeWidget(
      child: Container(
        color: MyColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: SizedBox(
          height: 200,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: MyCircularContainer(
                  backgroundColor: MyColors.light.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -150,
                child: MyCircularContainer(
                  backgroundColor: MyColors.light.withOpacity(0.1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
