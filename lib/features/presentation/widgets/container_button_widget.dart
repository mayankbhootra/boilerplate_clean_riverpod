import 'package:boilerplate_login/features/presentation/widgets/theme/style.dart';
import 'package:flutter/material.dart';

class ContainerButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const ContainerButtonWidget({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 44,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: greenColor,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
