import 'package:ecommerce/common/widget/custom_shape/containers/circular_container.dart';
import 'package:ecommerce/common/widget/custom_shape/curved_edges/curve_edge_widget.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurveEdgeWidget(
      child: Container(
        color: TColors.primary,
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  backgroundColor: TColors.white.withOpacity(0.1),
                )),
            Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  backgroundColor: TColors.white.withOpacity(0.1),
                )),
            child
          ],
        ),
      ),
    );
  }
}
