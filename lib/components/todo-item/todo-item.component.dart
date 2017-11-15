import 'package:angular/angular.dart';
import 'package:forms_dart/models/todo.model.dart';
import 'package:forms_dart/services/todo.service.dart';
import 'dart:html';

@Component(
  selector: 'todo',
  template: '''<h1 #inp>{{ todo.phrase }}</h1> <label>done? <input type="checkbox" (change)="onChangeUpdate(inp)"><label> <button (click)="onClickRemove()">remove</button><br>''',
  styleUrls: const ['todo-item.component.css'],
  pipes: const [COMMON_PIPES]
)
class TodoItemComponent{
  @Input() Todo todo;
  TodoService service;
  TodoItemComponent(TodoService service){
    this.service = service;
  }

  onChangeUpdate(HeadingElement check){
    final index = this.service.list.indexOf(todo);
    this.todo.done = !this.todo.done;
    this.service.list[index] = todo;
    var valueLine= check.style;
    valueLine.textDecoration== "line-through" ? valueLine.textDecoration = 'none': valueLine.textDecoration = "line-through";
  }

  onClickRemove(){
    this.service.list.remove(todo);
  }
}