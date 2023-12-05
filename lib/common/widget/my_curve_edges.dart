import 'package:flutter/material.dart';
import 'curve_edges.dart';

class MyCurveEdgeWidget extends StatelessWidget {
  const MyCurveEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: MyCurveEdges(), child: child);
  }
}
