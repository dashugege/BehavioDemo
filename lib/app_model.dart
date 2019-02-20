import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class AppModel extends Model {
  static AppModel of(BuildContext context) {
    return ScopedModel.of<AppModel>(context);
  }
}
