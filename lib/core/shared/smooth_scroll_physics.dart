import 'package:flutter/material.dart';

class SmoothScrollPhysics extends ScrollPhysics {
  const SmoothScrollPhysics({super.parent});

  @override
  SmoothScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return SmoothScrollPhysics(parent: buildParent(ancestor));
  }

  @override
  SpringDescription get spring => const SpringDescription(
    mass: 80,
    stiffness: 100,
    damping: 20,
  );

  @override
  bool get allowImplicitScrolling => true;

  @override
  double carriedMomentum(double existingVelocity) {
    // Daha yumuşak momentum carry
    return existingVelocity * 0.85;
  }

  @override
  double applyPhysicsToUserOffset(ScrollMetrics position, double offset) {
    // Kullanıcı input'unu daha yumuşak yap
    return offset * 0.95;
  }

  @override
  Simulation? createBallisticSimulation(
    ScrollMetrics position,
    double velocity,
  ) {
    final Tolerance tolerance = toleranceFor(position);
    
    if (velocity.abs() >= tolerance.velocity || position.pixels > position.minScrollExtent) {
      final double target = position.pixels + velocity * 500.0;
      
      return ScrollSpringSimulation(
        spring,
        position.pixels,
        target,
        velocity,
        tolerance: tolerance,
      );
    }
    
    return null;
  }
}