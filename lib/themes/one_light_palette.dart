import 'package:flutter/material.dart';

const Color _primaryColor = Color(0xFF4078F2);
const Color _onPrimaryColor = Color(0xFFFFFFFF);
const Color _secondaryColor = Color(0xFF50A14F);
const Color _onSecondaryColor = Color(0xFFFFFFFF);
const Color _tertiaryColor = Color(0xFFC18401);
const Color _onTertiaryColor = Color(0xFFFFFFFF);
const Color _surfaceColor = Color(0xFFE5E5E6);
const Color _onSurfaceColor = Color(0xFF383A42);
const Color _errorColor = Color(0xFFE45649);
const Color _onErrorColor = Color(0xFFFFFFFF);
const Color _outlineColor = Color(0xFFA0A1A7);
const Color _shadowColor = Color(0x1A000000);

const Color _backgroundColor = Color(0xFFFAFAFA);

const Color _batteryFull = Color(0xFF50A14F);
const Color _batteryMedium = Color(0xFFC18401);
const Color _batteryLow = Color(0xFFE45649);
const Color _batteryPower = Color(0xFF4078F2);

final ThemeData oneLightPalette = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: _primaryColor,
    secondary: _secondaryColor,
    tertiary: _tertiaryColor,
    surface: _surfaceColor,

    onPrimary: _onPrimaryColor,
    onSecondary: _onSecondaryColor,
    onTertiary: _onTertiaryColor,
    onSurface: _onSurfaceColor,

    error: _errorColor,
    onError: _onErrorColor,
    outline: _outlineColor,
    shadow: _shadowColor,
  ),

  cardColor: _backgroundColor,
  scaffoldBackgroundColor: _backgroundColor,

  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: _onSurfaceColor,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      color: _onSurfaceColor,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      color: _onSurfaceColor,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),

    bodyLarge: TextStyle(color: _onSurfaceColor, fontSize: 16),
    bodyMedium: TextStyle(color: _onSurfaceColor, fontSize: 14),
    bodySmall: TextStyle(color: _onSurfaceColor, fontSize: 12),

    labelLarge: TextStyle(
      color: _onSurfaceColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
  ),
);

class OneLightCustomColors {
  Color get batteryFull => _batteryFull;
  Color get batteryMedium => _batteryMedium;
  Color get batteryLow => _batteryLow;
  Color get batteryPower => _batteryPower;
}
