/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2022-05-18 10:31:37
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-12 09:15:39
 * @FilePath: /phoenix_input/example/lib/input_example.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_input/phoenix_input.dart';

class TextModel {
  String? text;
}

class BrnInputTextExample extends StatefulWidget {
  BrnInputTextExample();

  @override
  State<StatefulWidget> createState() {
    return _BrnInputTextExampleState();
  }
}

class _BrnInputTextExampleState extends State<BrnInputTextExample> {
  TextModel model = TextModel();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('input动态算高'),
        ),
        body: Container(
          color: Colors.white,
          child: Column(children: [
            _inputText(),
            const SizedBox(
              height: 20,
            ),
          ]),
        ));
  }

  Widget _inputText() {
    return InputText(
      maxHeight: 200,
      minHeight: 30,
      minLines: 1,
      maxLength: 10,
      bgColor: Colors.grey[200]!,
      textString: model.text ?? '',
      textInputAction: TextInputAction.newline,
      maxHintLines: 20,
      hint: 'input动态算高input动态算高input动态算高input动态算高input动态算高',
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 14),
      onTextChange: (text) {
        print(text);
        model.text = text;
        setState(() {});
      },
      onSubmit: (text) {
        print(text);
      },
    );
  }
}
