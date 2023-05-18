import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/image_pickerlibrary.g.dart',
    dartTestOut: 'test/image_picker_library.g.dart',
    kotlinOut: 'android/app/src/main/kotlin/com/example/testing/ImagePickerLibrary.kt',
    kotlinOptions: KotlinOptions(
      package: 'io.flutter.plugins.image_picker',
    ),
  ),
)
@HostApi(dartHostTestHandler: 'TestRecorderHostApi')
abstract class ImagePickerApi {
  int pickImages(int identifier);
}
