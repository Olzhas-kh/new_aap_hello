import 'package:flutter/material.dart';
import 'package:new_aap_hello/blocs/bloc_exports.dart';
import '../models/task.dart';
import '../widgets/tasks_list.dart';

class FavoriteTasksScreen extends StatelessWidget {
  const FavoriteTasksScreen({Key? key}) : super(key: key);
  static const id = 'tasks_screen';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<Task> tasksList = state.favoriteTasks;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Chip(
                label: Text(
                  '${tasksList.length} Tasks', //количества таски
                ),
              ),
            ),
            TasksList(tasksList: tasksList)
          ],
        );
      },
    );
  }
}