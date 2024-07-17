import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:ubs/view/core/translate_onhover.dart';

extension HoverExtensions on Widget {
  static final appContainer =
      html.window.document.getElementById('app-container');

  Widget get showCursorOnHover {
    return MouseRegion(
      child: this, //current widget
      onHover: (event) => appContainer?.style.cursor = "pointer",
      onExit: (event) => appContainer?.style.cursor = "default",
    );
  }

  Widget get moveUpONHover {
    return TranslateOnHover(child: this);
  }
}
