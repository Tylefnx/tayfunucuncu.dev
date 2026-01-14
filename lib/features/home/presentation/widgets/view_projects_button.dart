import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/presentation/app_button.dart';

class ViewProjectsButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ViewProjectsButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppButton(label: 'View Projects', onPressed: () {});
  }
}
