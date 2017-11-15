import 'package:angular/angular.dart';
import 'package:forms_dart/app_component.dart';
import 'package:forms_dart/services/todo.service.dart';

void main() {
  //para que sexa global
  bootstrap(AppComponent,[TodoService]);
}
