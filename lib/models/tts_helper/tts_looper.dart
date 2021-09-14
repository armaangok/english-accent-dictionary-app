import 'package:hive/hive.dart';
import 'package:wordmind/models/tts_helper/text_to_speech_helper.dart';
import '../words.dart';

void loop(int minute) async {
  await Hive.openBox("words");
  final box = Hive.box("words");

  for (var i = 0; i < box.length; i++) {
    final data = box.getAt(i) as Word;
    await Future.delayed(
      Duration(minutes: minute),
      () {
        speak(data.word);
      },
    );
  }
  print("listenin is done!");
}
