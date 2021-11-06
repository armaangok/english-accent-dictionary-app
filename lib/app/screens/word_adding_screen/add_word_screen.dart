import "package:flutter/material.dart";
import 'package:wordmind/app/screens/word_adding_screen/widgets/text_field_widget.dart';
import 'widgets/save_button_widget.dart.dart';

class AddWordScreen extends StatelessWidget {
  final TextEditingController word = TextEditingController();
  final TextEditingController origin = TextEditingController();
  final TextEditingController meaning1 = TextEditingController();
  final TextEditingController meaning2 = TextEditingController();
  final TextEditingController example = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AddingScreenTextFieldWidget(
                        textController: word,
                        label: 'Word',
                      ),
                      AddingScreenTextFieldWidget(
                        textController: origin,
                        label: 'Origin',
                      ),
                      AddingScreenTextFieldWidget(
                        textController: meaning1,
                        label: 'First Meaning',
                      ),
                      AddingScreenTextFieldWidget(
                        textController: meaning2,
                        label: 'Second Meaning',
                      ),
                      AddingScreenTextFieldWidget(
                        textController: example,
                        label: 'Example',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SaveManualWordButton(
                  word1: word,
                  origin: origin,
                  meaning1: meaning1,
                  meaning2: meaning2,
                  example: example,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
