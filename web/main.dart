// Copyright (c) 2017, erikrahtjen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/di.dart';
import 'package:angular2/platform/browser.dart';

import 'package:untitled/app_component.dart';
import 'package:pwa/client.dart' as pwa;

void main() {
  bootstrap(AppComponent, [
    new Provider(pwa.Client, useValue: new pwa.Client()),
  ]);
}
