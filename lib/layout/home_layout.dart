import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_project_masour/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:frist_project_masour/modules/done_tasks/done_tasks_screen.dart';
import 'package:frist_project_masour/modules/new_tasks/new_tasks_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex =0;
  List<Widget> screens =[
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> title=[
    'New Tasks',
    'Done Tasks',
    'Archived Tasks'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(title[currentIndex]) ,
      ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
      //   onPressed: () async
      //   {
      //     try{
      //       var name = await getName();
      //       print(name);
      //
      //       throw('some error !!!!');
      //     }catch(error){
      //       print('error${error.toString()}');
      //     }
      //
      // },
        onPressed: (){
          getName().then((value) {
            print(value);
            print('osama');
          }).catchError((error){
            print('error is ${error.toString()}');
          });
        },
      child: Icon(
        Icons.add
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
          setState((){
            currentIndex =index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'new_tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.check_circle_outline,
            ),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive_outlined,
            ),
            label: 'Archived',
          ),

        ],
      ),
    );
  }

  Future<String> getName() async{
    return 'abdo ahalaby';
  }
}
