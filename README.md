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
2) Fill in information for iOS in DefaultFirebaseOptions from GoogleService-Info.plist
# Android:
1) Paste GoogleService-Info.plist into ios/Runner/
2) Fill in information for iOS in DefaultFirebaseOptions from GoogleService-Info.plist

# 3) Ensure Firebase is initialized in main():
void main() async { <br>
&nbsp;&nbsp;&nbsp;&nbsp;WidgetsFlutterBinding.ensureInitialized(); <br>
&nbsp;&nbsp;&nbsp;&nbsp;await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform); <br>
&nbsp;&nbsp;&nbsp;&nbsp;runApp(const MyApp()); <br>
} <br>
