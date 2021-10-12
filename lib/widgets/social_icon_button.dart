import 'package:flutter/material.dart';

class SocialIconButton extends StatelessWidget {
  final Icon icon;
  final void Function()? onpressed;
  const SocialIconButton({Key? key, required this.icon, this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor.withOpacity(0.1),
      borderRadius: BorderRadius.circular(50),
      child: InkWell(
        onTap: onpressed,
        borderRadius: BorderRadius.circular(50),
        child: Container(
          width: 56, 
          height: 
          56, 
          child: icon,
          ),
      ),
    );
  }
}
