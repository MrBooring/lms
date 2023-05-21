import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchChips {
  buildchips(label) {
    var chips = <Widget>[].obs;
    for (int i = 0; i < label.length; i++) {
      chips.value.add(
        Chip(
          label: Text(
            label[i],
          ),
          labelPadding: EdgeInsets.all(8.0),
          backgroundColor: Colors.transparent,
          shape: StadiumBorder(side: BorderSide()),
        ),
      );
    }
    return chips;
  }
}
