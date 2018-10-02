// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart
  final String name;
  final color;
  final iconLocation;
  const Category(this.name, this.color, this.iconLocation);


  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    double height = 100.0;
    const halfHeight = 50.0;

    return Container(
      height: height, // Widget height
      // padding: const EdgeInsets.all(8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(
            const Radius.circular(halfHeight),
          ),
        ),

      child: new InkWell(
          splashColor: this.color,
        highlightColor: this.color,
        borderRadius: new BorderRadius.all(
          const Radius.circular(50.0),
        ),
        onTap: () {
          print("I was tapped!");
        },
        child: new Row(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(16.0), // padding around
              child:  new Icon(
                this.iconLocation,
                size: 60.0, // Icon size
              ),
            ),

            new Text(
              this.name,
              style: new TextStyle(
                fontSize: 24.0 // Text size
              ),
            ),

          ],
        )
      )
    );
  }
}