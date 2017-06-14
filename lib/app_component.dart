// Copyright (c) 2017, erikrahtjen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';
import 'package:google_maps/google_maps.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
)
class AppComponent implements AfterViewInit {
  // Nothing here yet. All logic is in TodoListComponent.
  @ViewChild('mapArea')
  ElementRef mapAreaRef;


  @override
  ngAfterViewInit() {
    GMap map = new GMap(
        mapAreaRef.nativeElement,
        new MapOptions()
          ..zoom = 2
          ..center = new LatLng(47.4979, 19.0402)
      // ^ Budapest, Hungary
    );
    new Marker(new MarkerOptions()
      ..map = map
      ..position = new LatLng(47.4979, 19.0402)
      ..label = 'A');
  }
}
