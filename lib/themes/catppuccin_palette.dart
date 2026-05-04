import 'package:flutter/material.dart';

const Color _primaryColor = Color(0xFFCBA6F7);
const Color _onPrimaryColor = Color(0xFF1E1E2E);
const Color _secondaryColor = Color(0xFFA6E3A1);
const Color _onSecondaryColor = Color(0xFF1E1E2E);
const Color _tertiaryColor = Color(0xFF89B4FA);
const Color _onTertiaryColor = Color(0xFF1E1E2E);
const Color _surfaceColor = Color(0xFF313244);
const Color _onSurfaceColor = Color(0xFFCDD6F4);
const Color _errorColor = Color(0xFFF38BA8);
const Color _onErrorColor = Color(0xFF1E1E2E);
const Color _outlineColor = Color(0xFF585B70);
const Color _shadowColor = Color(0xFF000000);

const Color _backgroundColor = Color(0xFF1E1E2E);

const Color _batteryFull = Color(0xFFA6E3A1);
const Color _batteryMedium = Color(0xFFF9E2AF);
const Color _batteryLow = Color(0xFFF38BA8);
const Color _batteryPower = Color(0xFF89B4FA);

final ThemeData catppuccinPalette = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.dark(
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

class CatppuccinCustomColors {
  Color get batteryFull => _batteryFull;
  Color get batteryMedium => _batteryMedium;
  Color get batteryLow => _batteryLow;
  Color get batteryPower => _batteryPower;
}
