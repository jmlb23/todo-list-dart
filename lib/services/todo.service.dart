import 'package:angular/angular.dart';
import 'package:forms_dart/models/todo.model.dart';

@Injectable()
class TodoService{
  List<Todo> list = <Todo>[];
}