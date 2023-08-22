import 'package:flutter/material.dart';
import 'package:form_generator/models/form_element_model.dart';

class RadioButtonFormFieldWidget extends StatefulWidget {
  final FormElementModel element;
  TextEditingController? controller;
  RadioButtonFormFieldWidget(
      {super.key, required this.element, this.controller});

  @override
  State<RadioButtonFormFieldWidget> createState() =>
      _RadioButtonFormFieldWidgetState();
}

class _RadioButtonFormFieldWidgetState
    extends State<RadioButtonFormFieldWidget> {
  final SliverGridDelegate delegate =
      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.element.label,
          style: const TextStyle(fontSize: 16),
        ),
        if (widget.element.options.isNotEmpty)
          SizedBox(
            height: MediaQuery.of(context).size.height / 8,
            child: GridView.builder(
              gridDelegate: delegate,
              padding: const EdgeInsets.all(0),
              itemCount: widget.element.options.length,
              itemBuilder: (context, index) {
                return RadioListTile(
                  groupValue: widget.controller!.text,
                  title: Text(widget.element.options[index]),
                  value: widget.element.options[index],
                  onChanged: (newIndex) {
                    setState(() {
                      widget.controller!.text = newIndex!;
                    });
                  },
                );
              },
            ),
          )
      ],
    );
  }
}
