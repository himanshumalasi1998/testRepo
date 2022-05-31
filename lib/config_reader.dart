import 'dart:convert';
import 'package:flutter/services.dart';

abstract class ConfigReader {
  static late Map<String, dynamic> _config;

  static Future<void> initialize() async {
    final configString = await rootBundle.loadString('app_config.json');
    _config = json.decode(configString) as Map<String, dynamic>;
  }

  static String getEnv() {
    return _config['env'] as String;
  }
}