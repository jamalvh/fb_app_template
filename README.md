# Firebase Setup Tutorial (using this template)
flutter pub add firebase_core <br>
flutter pub add firebase_auth <br>
flutter pub add cloud_firestore <br>

# 1) Install Firebase Dependencies:
flutter pub get

# 2) Configure Files and Firebase Options
# Web:
1) Fill in information for Web in DefaultFirebaseOptions via Copy/Paste from Firebase Web Setup Walkthrough.
# iOS:
1) Paste GoogleService-Info.plist into ios/Runner/
2) Fill in information for iOS in DefaultFirebaseOptions from GoogleService-Info.plist <br>
Note: messagingSenderId is first part of appId. <br>
&nbsp;&nbsp;&nbsp;&nbsp;Ex) appId = 1:287727538614:ios:a09f09086b7e5ed1963117, messagingSenderId: 287727538614
# Android:
1) Paste google-services.json into android/app/
2) Fill in information for Android in DefaultFirebaseOptions from google-services.json <br>
Note: API Key and appId are not the same as for iOS.

# 3) Ensure Firebase is initialized in main():
void main() async { <br>
&nbsp;&nbsp;&nbsp;&nbsp;WidgetsFlutterBinding.ensureInitialized(); <br>
&nbsp;&nbsp;&nbsp;&nbsp;await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform); <br>
&nbsp;&nbsp;&nbsp;&nbsp;runApp(const MyApp()); <br>
} <br>

# --- If Running Into Version Errors ---
# iOS:
Check ios/Runner/Podfile for platform version (second line)
# Android:
Check android/app/build.gradle ndkVersion & minSdk versions.
