import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';

class CardPage extends StatelessWidget {
  final String name;
  final String position;
  final String srcImage;
  final String number;
  final String mail;

  CardPage({
    this.name,
    this.position,
    this.srcImage,
    this.number,
    this.mail,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Constants.safeAreaPaddingVertical,
          horizontal: Constants.safeAreaPaddingHorizontal,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: Constants.containerPaddingTop,
              left: Constants.containerPaddingRightLeft,
              right: Constants.containerPaddingRightLeft,
            ),
            child: Container(
              height: Constants.principalContainerHeight,
              width: Constants.principalContainerWidth,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: Constants.gradientRadius,
                  colors: [
                    Colors.purple,
                    Colors.deepPurple,
                  ],
                ),
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(
                  Constants.borderRadius,
                ),
                border: Border.all(
                  color: Colors.deepPurple,
                  width: Constants.borderWidth,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: Constants.circleAvatarPaddingTop,
                    ),
                    child: CircleAvatar(
                      radius: Constants.circleAvatarRadius,
                      backgroundImage: AssetImage(
                        this.srcImage,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: Constants.containerPaddingTop,
                    ),
                    child: Container(
                      child: Text(
                        this.name,
                        style: TextStyle(
                          fontSize: Constants.fontSize,
                          color: Constants.cardTextColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: Constants.paddingPosition,
                    ),
                    child: Text(
                      this.position,
                      style: TextStyle(
                        color: Constants.cardTextColor,
                        fontSize: Constants.fontSize,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: Constants.containerPaddingTop,
                    ),
                    child: Container(
                      child: Divider(
                        color: Colors.deepPurpleAccent,
                        thickness: Constants.dividerThickness,
                      ),
                    ),
                  ),
                  Card(
                    elevation: Constants.cardElevation,
                    color: Colors.purple,
                    child: ListTile(
                      leading: Icon(
                        Icons.phone_android,
                        color: Constants.cardTextColor,
                      ),
                      title: Text(
                        this.number,
                        style: TextStyle(
                          fontSize: Constants.cardFontSize,
                          color: Constants.cardTextColor,
                        ),
                      ),
                      subtitle: Text(
                        Constants.subtitleCardPhone,
                        style: TextStyle(
                          fontSize: Constants.cardFontSize,
                          color: Constants.cardTextColor,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: Constants.cardElevation,
                    color: Colors.purple,
                    child: ListTile(
                      leading: Icon(
                        Icons.mail_outline_outlined,
                        color: Constants.cardTextColor,
                      ),
                      title: Text(
                        this.mail,
                        style: TextStyle(
                          fontSize: Constants.cardFontSize,
                          color: Constants.cardTextColor,
                        ),
                      ),
                      subtitle: Text(
                        Constants.subtitleCardMail,
                        style: TextStyle(
                          fontSize: Constants.cardFontSize,
                          color: Constants.cardTextColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
