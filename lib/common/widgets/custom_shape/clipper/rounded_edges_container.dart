import 'package:flutter/material.dart';
import 'package:mykart/common/widgets/custom_shape/clipper/circular_container.dart';

class URoundedEdgesContainer extends StatelessWidget {
  const URoundedEdgesContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: UCustomRoundedEdges(),
      child: child,
    );
  }
}
