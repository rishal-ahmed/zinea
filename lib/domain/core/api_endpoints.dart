import 'package:zinea/core/constants/base_url.dart';

class ApiEndpoints {
  //==================== Config ====================
  static const String config = '${apiUrl}configs.php';

  //==================== Authentications ====================
  static const String login = '${apiUrl}login.php';
  static const String register = '${apiUrl}register.php';

  //==================== Home ====================
  static const String home = '${apiUrl}homeContents.php';

  //==================== Search ====================
  static const String search = '${apiUrl}search.php';

  //==================== Video ====================
  static const String info = '${apiUrl}getMovie.php';

  //==================== Watchlist ====================
  static const String watchlists = '${apiUrl}fetchWatchList.php';
  static const String watchlistModify = '${apiUrl}modifyWatchList.php';

  //==================== Filter ====================
  static const String filter = '${apiUrl}fetchContents.php';
  // static const String watchlistModify = '${apiUrl}modifyWatchList.php';
}
