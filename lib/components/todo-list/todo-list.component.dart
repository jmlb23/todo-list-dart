import 'package:angular/angular.dart';
import 'package:forms_dart/components/todo-item/todo-item.component.dart';
import 'package:forms_dart/services/todo.service.dart';

@Component(
  selector: 'todo-list',
  templateUrl: 'todo-list.component.html',
  directives: const [TodoItemComponent,CORE_DIRECTIVES],
)
class TodoListComponent{
  TodoService service;
  TodoListComponent(this.service){
  }
}