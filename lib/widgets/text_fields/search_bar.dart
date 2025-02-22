/*
Copyright 2022 The dahliaOS Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    this.hint,
    this.icon,
    Key? key,
  }) : super(key: key);

  final String? hint;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 40,
      width: 250,
      child: TextField(
        style: Theme.of(context).textTheme.subtitle2,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.fromLTRB(5.0, 1.0, 5.0, 1.0),
          prefixIcon: Icon(icon),
          prefixIconColor:
              Theme.of(context).inputDecorationTheme.prefixIconColor,
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.subtitle2,
          enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
          focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
        ),
      ),
    );
  }
}
