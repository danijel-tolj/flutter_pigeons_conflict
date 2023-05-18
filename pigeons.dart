import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/image_picker_library.g.dart',
    dartTestOut: 'test/image_picker_library.g.dart',
    kotlinOut: 'android/app/src/main/kotlin/com/example/testing/ImagePickerLibrary.kt',
    kotlinOptions: KotlinOptions(
      package: 'com.dtolj.image_picker',
    ),
  ),
)
@HostApi()
abstract class ImagePickerApi {
  String pickImages();
}
