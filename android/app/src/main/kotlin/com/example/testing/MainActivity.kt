package com.example.testing

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.image_picker.ImagePickerApi

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val api = PigeonApiImplementation()
        ImagePickerApi.setUp(flutterEngine.dartExecutor.binaryMessenger, api)
    }
}

class PigeonApiImplementation : ImagePickerApi {
    override fun pickImages(identifier: Long): Long {
        return 123
    }
}
