import 'package:app_ui/src/colors.dart';
import 'package:app_ui/src/typography/typography.dart';
import 'package:flutter/widgets.dart';

/// TronLegacy Text Style Definitions
class TronLegacyTextStyle {
  static const _baseTextStyle = TextStyle(
    package: 'app_ui',
    fontFamily: 'Pixelify',
    color: TronLegacyColors.black,
    fontWeight: TronLegacyFontWeight.regular,
  );

  /// Headline 1 Text Style
  static TextStyle get displayLarge {
    return _baseTextStyle.copyWith(
      fontSize: 56,
      fontWeight: TronLegacyFontWeight.medium,
    );
  }

  /// Headline 2 Text Style
  static TextStyle get displayMedium {
    return _baseTextStyle.copyWith(
      fontSize: 30,
      fontWeight: TronLegacyFontWeight.regular,
    );
  }

  /// Headline 3 Text Style
  static TextStyle get displaySmall {
    return _baseTextStyle.copyWith(
      fontSize: 28,
      fontWeight: TronLegacyFontWeight.regular,
    );
  }

  /// Headline 4 Text Style
  static TextStyle get headlineMedium {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: TronLegacyFontWeight.bold,
    );
  }

  /// Headline 5 Text Style
  static TextStyle get headlineSmall {
    return _baseTextStyle.copyWith(
      fontSize: 20,
      fontWeight: TronLegacyFontWeight.medium,
    );
  }

  /// Headline 6 Text Style
  static TextStyle get titleLarge {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: TronLegacyFontWeight.bold,
    );
  }

  /// Subtitle 1 Text Style
  static TextStyle get titleMedium {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: TronLegacyFontWeight.bold,
    );
  }

  /// Subtitle 2 Text Style
  static TextStyle get titleSmall {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: TronLegacyFontWeight.bold,
    );
  }

  /// Body Text 1 Text Style
  static TextStyle get bodyLarge {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: TronLegacyFontWeight.medium,
    );
  }

  /// Body Text 2 Text Style (the default)
  static TextStyle get bodyMedium {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: TronLegacyFontWeight.regular,
    );
  }

  /// Caption Text Style
  static TextStyle get bodySmall {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: TronLegacyFontWeight.regular,
    );
  }

  /// Overline Text Style
  static TextStyle get labelSmall {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: TronLegacyFontWeight.regular,
    );
  }

  /// Button Text Style
  static TextStyle get labelLarge {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: TronLegacyFontWeight.medium,
    );
  }
}
