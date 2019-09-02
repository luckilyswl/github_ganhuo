import 'package:flutter/foundation.dart';

enum ThemeType{light,dark,brown,blue}
enum PlatForm{android,iOS}

class GithubConfiguration{
  ThemeType themeType;
  PlatForm platForm;
  bool random = false;
  bool gifEnable = false;

  GithubConfiguration(
      {@required this.platForm,
        @required this.themeType,
        @required this.random,
        @required this.gifEnable})
      : assert(themeType != null),
        assert(random != null),
        assert(gifEnable != null),
        assert(platForm != null);

  GithubConfiguration copyWith({
    ThemeType themeType,
    PlatForm platForm,
    bool random,
    bool gifEnable,
  }) {
    return GithubConfiguration(
        themeType: themeType ?? this.themeType,
        platForm: platForm ?? this.platForm,
        random: random ?? this.random,
        gifEnable: gifEnable ?? this.gifEnable);
  }
}
