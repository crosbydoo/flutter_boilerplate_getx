import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff006494),
      surfaceTint: Color(0xff006494),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff78c5ff),
      onPrimaryContainer: Color(0xff00334e),
      secondary: Color(0xff42627b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffcae5ff),
      onSecondaryContainer: Color(0xff2a4b63),
      tertiary: Color(0xff814598),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffe8a4ff),
      onTertiaryContainer: Color(0xff4d1065),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff7f9ff),
      onBackground: Color(0xff181c20),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      surfaceVariant: Color(0xffdbe3ee),
      onSurfaceVariant: Color(0xff3f4850),
      outline: Color(0xff6f7881),
      outlineVariant: Color(0xffbfc7d1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inverseOnSurface: Color(0xffeef1f7),
      inversePrimary: Color(0xff8fcdff),
      primaryFixed: Color(0xffcbe6ff),
      onPrimaryFixed: Color(0xff001e30),
      primaryFixedDim: Color(0xff8fcdff),
      onPrimaryFixedVariant: Color(0xff004b71),
      secondaryFixed: Color(0xffcbe6ff),
      onSecondaryFixed: Color(0xff001e30),
      secondaryFixedDim: Color(0xffaacae8),
      onSecondaryFixedVariant: Color(0xff294a62),
      tertiaryFixed: Color(0xfff9d8ff),
      onTertiaryFixed: Color(0xff320046),
      tertiaryFixedDim: Color(0xffecb1ff),
      onTertiaryFixedVariant: Color(0xff672d7e),
      surfaceDim: Color(0xffd7dae0),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef4),
      surfaceContainerHigh: Color(0xffe5e8ee),
      surfaceContainerHighest: Color(0xffdfe3e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff00476b),
      surfaceTint: Color(0xff006494),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff007bb6),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff25465e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff587892),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff63287a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff995cb0),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff7f9ff),
      onBackground: Color(0xff181c20),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      surfaceVariant: Color(0xffdbe3ee),
      onSurfaceVariant: Color(0xff3b444c),
      outline: Color(0xff576069),
      outlineVariant: Color(0xff737c85),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inverseOnSurface: Color(0xffeef1f7),
      inversePrimary: Color(0xff8fcdff),
      primaryFixed: Color(0xff007bb6),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff006191),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff587892),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3f5f78),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff995cb0),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff7e4396),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dae0),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef4),
      surfaceContainerHigh: Color(0xffe5e8ee),
      surfaceContainerHighest: Color(0xffdfe3e8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff00253a),
      surfaceTint: Color(0xff006494),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff00476b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff00253a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff25465e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3c0054),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff63287a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff7f9ff),
      onBackground: Color(0xff181c20),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdbe3ee),
      onSurfaceVariant: Color(0xff1c252c),
      outline: Color(0xff3b444c),
      outlineVariant: Color(0xff3b444c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffddeeff),
      primaryFixed: Color(0xff00476b),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00304a),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff25465e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff0a2f47),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff63287a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4a0c62),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dae0),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef4),
      surfaceContainerHigh: Color(0xffe5e8ee),
      surfaceContainerHighest: Color(0xffdfe3e8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb1dbff),
      surfaceTint: Color(0xff8fcdff),
      onPrimary: Color(0xff00344f),
      primaryContainer: Color(0xff53b5f7),
      onPrimaryContainer: Color(0xff00243a),
      secondary: Color(0xffaacae8),
      onSecondary: Color(0xff0f334b),
      secondaryContainer: Color(0xff21425a),
      onSecondaryContainer: Color(0xffb7d8f6),
      tertiary: Color(0xfff4c9ff),
      onTertiary: Color(0xff4e1266),
      tertiaryContainer: Color(0xffd895ef),
      onTertiaryContainer: Color(0xff3e0056),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff101418),
      onBackground: Color(0xffdfe3e8),
      surface: Color(0xff101418),
      onSurface: Color(0xffdfe3e8),
      surfaceVariant: Color(0xff3f4850),
      onSurfaceVariant: Color(0xffbfc7d1),
      outline: Color(0xff89929b),
      outlineVariant: Color(0xff3f4850),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e8),
      inverseOnSurface: Color(0xff2d3135),
      inversePrimary: Color(0xff006494),
      primaryFixed: Color(0xffcbe6ff),
      onPrimaryFixed: Color(0xff001e30),
      primaryFixedDim: Color(0xff8fcdff),
      onPrimaryFixedVariant: Color(0xff004b71),
      secondaryFixed: Color(0xffcbe6ff),
      onSecondaryFixed: Color(0xff001e30),
      secondaryFixedDim: Color(0xffaacae8),
      onSecondaryFixedVariant: Color(0xff294a62),
      tertiaryFixed: Color(0xfff9d8ff),
      onTertiaryFixed: Color(0xff320046),
      tertiaryFixedDim: Color(0xffecb1ff),
      onTertiaryFixedVariant: Color(0xff672d7e),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff353a3e),
      surfaceContainerLowest: Color(0xff0a0f13),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff262a2f),
      surfaceContainerHighest: Color(0xff31353a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb1dbff),
      surfaceTint: Color(0xff8fcdff),
      onPrimary: Color(0xff002338),
      primaryContainer: Color(0xff53b5f7),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffaecfec),
      onSecondary: Color(0xff001828),
      secondaryContainer: Color(0xff7494b0),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff4c9ff),
      onTertiary: Color(0xff3c0053),
      tertiaryContainer: Color(0xffd895ef),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101418),
      onBackground: Color(0xffdfe3e8),
      surface: Color(0xff101418),
      onSurface: Color(0xfff9fbff),
      surfaceVariant: Color(0xff3f4850),
      onSurfaceVariant: Color(0xffc3ccd6),
      outline: Color(0xff9ba4ad),
      outlineVariant: Color(0xff7b848d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e8),
      inverseOnSurface: Color(0xff262a2f),
      inversePrimary: Color(0xff004c73),
      primaryFixed: Color(0xffcbe6ff),
      onPrimaryFixed: Color(0xff001321),
      primaryFixedDim: Color(0xff8fcdff),
      onPrimaryFixedVariant: Color(0xff003a58),
      secondaryFixed: Color(0xffcbe6ff),
      onSecondaryFixed: Color(0xff001321),
      secondaryFixedDim: Color(0xffaacae8),
      onSecondaryFixedVariant: Color(0xff173951),
      tertiaryFixed: Color(0xfff9d8ff),
      onTertiaryFixed: Color(0xff220031),
      tertiaryFixedDim: Color(0xffecb1ff),
      onTertiaryFixedVariant: Color(0xff54196c),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff353a3e),
      surfaceContainerLowest: Color(0xff0a0f13),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff262a2f),
      surfaceContainerHighest: Color(0xff31353a),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff9fbff),
      surfaceTint: Color(0xff8fcdff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff98d1ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff9fbff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffaecfec),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fa),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffeeb7ff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101418),
      onBackground: Color(0xffdfe3e8),
      surface: Color(0xff101418),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff3f4850),
      onSurfaceVariant: Color(0xfff9fbff),
      outline: Color(0xffc3ccd6),
      outlineVariant: Color(0xffc3ccd6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e8),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff002d46),
      primaryFixed: Color(0xffd3e9ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff98d1ff),
      onPrimaryFixedVariant: Color(0xff001828),
      secondaryFixed: Color(0xffd3e9ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffaecfec),
      onSecondaryFixedVariant: Color(0xff001828),
      tertiaryFixed: Color(0xfffadeff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffeeb7ff),
      onTertiaryFixedVariant: Color(0xff2a003b),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff353a3e),
      surfaceContainerLowest: Color(0xff0a0f13),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff262a2f),
      surfaceContainerHighest: Color(0xff31353a),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
