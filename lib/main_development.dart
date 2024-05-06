import 'package:charity_app/app/view/app.dart';
import 'package:charity_app/bootstrap.dart';
import 'package:charity_app/core/app_export.dart';
import 'package:charity_app/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  bootstrap(() => const App(), environment: Environment.production);
}