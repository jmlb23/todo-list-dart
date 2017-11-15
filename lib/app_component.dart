import 'package:angular/angular.dart';
import 'package:forms_dart/components/todo-list/todo-list.component.dart';
import 'package:angular_forms/angular_forms.dart';
import 'dart:html';
import 'package:forms_dart/services/todo.service.dart';
import 'package:forms_dart/models/todo.model.dart';

@Component(
    selector: 'app-component',
    templateUrl: 'app_component.html',
    directives: const [TodoListComponent],
    styleUrls: const ['app_component.css']
)
class AppComponent {
  var name = 'Angular';
  TodoService service;
  AppComponent(this.service);
  void envia(InputElement valor){
    service.list.add(new Todo(valor.value,false));
    valor.value = "";
  }
}

