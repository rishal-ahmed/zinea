import 'package:zinea/core/constants/base_url.dart';

class ApiEndpoints {
  //==================== Authentications ====================
  static const String login = '${apiUrl}login.php';
  static const String register = '${apiUrl}register.php';

  //==================== Home ====================
  static const String home = '${apiUrl}homeContents.php';

  //==================== Search ====================
  static const String search = '${apiUrl}search.php';

  //==================== Video ====================
  static const String info = '${apiUrl}getMovie.php';
}
