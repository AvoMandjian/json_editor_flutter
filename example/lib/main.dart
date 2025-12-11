import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_editor_flutter/json_editor_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'JSON Editor Example',
      home: JsonEditorExample(),
    );
  }
}

class JsonEditorExample extends StatelessWidget {
  const JsonEditorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: JsonEditor(
          onChanged: (value) {
            // Do something
          },
          jinjaDropdownJson: {
            'widget_id': 'uid',
            'widget_type': 'dropdown',
            'mode': 'edit',
            'data': {'value': 'tree', 'value_text': 'Tree'},
            "property_settings": {
              "menu_width": {"value": 300},
              "width": {"value": 50},
              "height": {"value": 50},
              "icon": {
                "value": {
                  "widget_id": "flutter_svg",
                  "widget_type": "flutter_svg",
                  "mode": "network",
                  "width": 20,
                  "height": 20,
                  "data": "https://files.svgcdn.io/tdesign/add.svg",
                }
              },
              'single_dropdown_items': [
                {
                  'value': 'tree',
                  'value_text': 'Tree',
                  'prefix_icon': {
                    "width": 20.0,
                    'widget_id': 'flutter_svg',
                    'widget_type': 'flutter_svg',
                    'mode': 'network',
                    'data': 'https://files.svgcdn.io/tdesign/add.svg',
                  },
                },
                {
                  'value': 'text',
                  'value_text': 'Text',
                  'prefix_icon': {
                    "width": 20.0,
                    'widget_id': 'flutter_svg',
                    'widget_type': 'flutter_svg',
                    'mode': 'network',
                    'data': 'https://files.svgcdn.io/tdesign/add.svg',
                  },
                },
              ],
            },
          },
          json: jsonEncode({
            "name": "John Doe",
            "age": 24,
            "hobbies": ["Reading", "Coding"],
            "address": {
              "street": "Main Street",
              "number": 1234567890,
              "city": "New York"
            }
          }),
        ),
      ),
    );
  }
}
