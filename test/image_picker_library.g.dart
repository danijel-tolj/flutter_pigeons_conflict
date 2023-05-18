// Autogenerated from Pigeon (v10.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, unnecessary_import
// ignore_for_file: avoid_relative_lib_imports
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;
import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:testing/src/image_pickerlibrary.g.dart';

abstract class TestRecorderHostApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding => TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> codec = StandardMessageCodec();

  int pickImages(int identifier);

  static void setup(TestRecorderHostApi? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImagePickerApi.pickImages', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.ImagePickerApi.pickImages was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_identifier = (args[0] as int?);
          assert(arg_identifier != null,
              'Argument for dev.flutter.pigeon.ImagePickerApi.pickImages was null, expected non-null int.');
          final int output = api.pickImages(arg_identifier!);
          return <Object?>[output];
        });
      }
    }
  }
}
