import 'package:get/get.dart';

import '../model/task.dart';

class TaskController extends GetxController {
  var tasks = <Task>[
    // Task(title: ''),
    // Task(title: 'Task 2'),
  ].obs;
  var title = ''.obs;
  var taskStatus = false.obs;

  @override
  void onInit() {
    getAllTasks();
    super.onInit();
  }

  addTask(String title) {
    tasks.add(Task(title: title, isDone: false));
    // update();
    // getAllTasks();
  }

  // addTask(Task myTask) {
  //   tasks.add(myTask);
  //   getAllTasks();
  // }

  void removeTask(int index) {
    tasks.removeAt(index);
    // update();
    // getAllTasks();
  }

  void updateTask(int index, String title) {
    tasks[index].title = title;
    // update();
    // getAllTasks();
    tasks.refresh();
  }

  void toggleTask(int index) {
    tasks[index].isDone = !tasks[index].isDone;
    // getAllTasks();
    tasks.refresh();
    // update();
  }

  getAllTasks() {
    // tasks.value =
    //     tasks.map((element) => Task.fromJson(element.toJson())).toList().obs;
    // update();
    if (tasks.isNotEmpty) {
      tasks.refresh();
    }
  }
}
