import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mostrarAlerta(BuildContext context, String titulo, String subtitulo) {
  if (Platform.isAndroid) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(titulo),
              content: Text(subtitulo),
              actions: <Widget>[
                MaterialButton(
                  child: Text('OK'),
                  elevation: 5,
                  textColor: Colors.blue,
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ));
  }

  showCupertinoDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: Text(titulo),
      content: Text(subtitulo),
      actions: <Widget>[
        CupertinoDialogAction(
          isDefaultAction: true,
          child: Text('OK'),
          onPressed: () => Navigator.pop(context),
        )
      ],
    ),
  );
}
