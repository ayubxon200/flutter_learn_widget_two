import 'package:flutter/material.dart';
import 'button.dart';

/// A sign in button that matches Twitter's look and feel.
///
/// The button text can be overridden, however the default text is recommended
/// in order to be compliant with the design guidelines and to maximise
/// conversion.
class TwitterSignInButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final double borderRadius;
  final Color? splashColor;
  final bool centered;

  /// Creates a new button. The default button text is 'Sign in with Twitter'.
  TwitterSignInButton({
    this.onPressed,
    this.borderRadius = defaultBorderRadius,
    this.text = 'Sign in with Twitter',
    this.textStyle,
    this.splashColor,
    this.centered = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StretchableButton(
      buttonColor: Color(0xFFE7E7E7),
      borderRadius: borderRadius,
      splashColor: splashColor,
      onPressed: onPressed,
      buttonBorderColor: Color(0xFFCCCCCC),
      buttonPadding: 0.0,
      centered: centered,
      children: <Widget>[
        // Facebook doesn't provide strict sizes, so this is a good
        // estimate of their examples within documentation.

        Image(
          image: AssetImage(
            "assets/graphics/Twitter_Logo_Blue.png",
          ),
          height: 40.0,
          width: 40.0,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text(
            text,
            style: textStyle ??
                TextStyle(
                  // default to the application font-style
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF555555),
                ),
          ),
        ),
      ],
    );
  }
}
