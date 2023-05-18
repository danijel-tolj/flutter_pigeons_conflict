package com.example.testing

import com.dtolj.image_picker.ImagePickerApi
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val api = PigeonApiImplementation()
        ImagePickerApi.setUp(flutterEngine.dartExecutor.binaryMessenger, api)
    }
}

class PigeonApiImplementation : ImagePickerApi {
    override fun pickImages(): String {
        return "Message received from Android"
    }
}
