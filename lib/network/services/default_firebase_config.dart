import 'package:firebase_core/firebase_core.dart';
import 'package:nb_utils/nb_utils.dart';

class DefaultFirebaseConfig {
  static String iosAppId = '1:214738954591:ios:20a5fa1db139a4545f6eea';
  static String androidAppID = '1:214738954591:android:0001ca82ce05e1ea5f6eea';

  static FirebaseOptions get platformOptions {
    if (isMobile)
      return FirebaseOptions(
        appId: isApple ? iosAppId : androidAppID,
        apiKey: 'AIzaSyCf4Oj9uTXzmOf9bgPuoRvB1DZaFXPHc0',
        projectId: 'kivicareneurocare',
        messagingSenderId: '214738954591',
        storageBucket: 'kivicareneurocare.firebasestorage.app',
      );
    else
      throw UnsupportedError('DefaultFirebaseOptions have not been configured for selected platform ');
  }
}
