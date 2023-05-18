# Title

Demonstration of BasicMessageChannel naming conflict 

## 

### Steps to reproduce

- Run the app, message should be received by the app plugin.
- Clicking on the FAB will throw an Exception from image_picker_android
- Remove references to the ImagePickerApi or rename ImagePickerApi in src/pigeons.dart 
- image_picker_android should work