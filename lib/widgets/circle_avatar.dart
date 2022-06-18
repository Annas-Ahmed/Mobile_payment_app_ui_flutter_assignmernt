import 'package:flutter/material.dart';

circleAvatarWidget(imageName) {
  return CircleAvatar(
    radius: 30,
    backgroundImage: AssetImage('assets/images/${imageName}.png'),
  );
}
