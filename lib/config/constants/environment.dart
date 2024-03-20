import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String wheaterKey = dotenv.env['WHEATER_API_KEY'] ?? 'No hay API Key';
}
