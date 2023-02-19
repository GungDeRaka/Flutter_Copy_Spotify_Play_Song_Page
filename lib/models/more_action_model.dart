import 'package:flutter/material.dart';

class MoreAction {
  final Icon icon;
  final String actionName;

  MoreAction(this.icon, this.actionName);
}

enum Action {
  liked,
  playlist,
  queue,
  record,
  album,
  artist,
  share,
  sleep,
  radio,
  credits,
  report
}
