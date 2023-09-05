import 'package:test_main/src/models/tasks.dart';

abstract class BoardRepository{
  Future<List<Task>> fetch();
  Future<List<Task>> update(List<Task> tasks);
  
}