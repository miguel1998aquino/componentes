import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/cardPages.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/input_pages.dart';
import 'package:componentes/src/pages/lisVie_page.dart';
import 'package:componentes/src/pages/slider_page.dart';
import 'package:flutter/widgets.dart';

Map<String, WidgetBuilder> getAplicatioRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AletrPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPages(),
    'animatedContainer': (BuildContext context) => ContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'lista':(BuildContext context) => ListPage(),
  };
}
