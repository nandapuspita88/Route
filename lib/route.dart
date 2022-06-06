return MaterialPageRoute(builder: (_)=> HomePage());
import 'package:flutter/material.dart';
import 'package: Route/homepage.dart';


class RouteGenerator{
  static Route<dynamic> generateRoute (RouteSetting settings){

    swicth(settings.name){
      case '/';
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/about';
        return MaterialPageRoute(builder: (_) => AboutPage());
      default;
        return _errorRoute();

    }

  }

  static Route <dynamic> errorRoute(){
    return MaterialPageRoute (builder: () {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error Pages')),
      );
    });
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp (MaterialApp (
    onGenerateRoute:RouteGenerator.generateRoute,
  ));
}