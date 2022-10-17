import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../models/task_model.dart';
import '../views/screens/all_task_screen.dart';
import '../views/screens/complete_task_screen.dart';
import '../views/screens/incomplete_task_screen.dart';

class MainTaskScreen extends StatefulWidget {
  const MainTaskScreen({Key? key}) : super(key: key);

  @override
  State<MainTaskScreen> createState() => _MainTaskScreenState();
}

class _MainTaskScreenState extends State<MainTaskScreen> with SingleTickerProviderStateMixin {
checkTask(TaskModel taskModel){
  int index = tasks.indexOf(taskModel);
  tasks[index].isComplete = ! tasks[index].isComplete;
  setState(() {

  });
}

late TabController tabController;
initalizeTabController (){
  tabController = TabController(length: 3, vsync: this);
}

int  _selectedIndex =0;
String _selectedContent = 'Home';
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    initalizeTabController ();
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
   Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[800],
        title: const Text(
          'ToDo App'
        ),
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              text: 'All Tasks',
            ),
            Tab(
              text: 'Complete Tasks',
            ),
            Tab(
              text: 'Incomplete Tasks',
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text(
                  'ANR'
                ),
              ),
                accountName: Text(
                  'Alaa Noman Rashed'
                ),
                accountEmail: Text(
                  'alaa.noman.rashed@gmail.com'
                )
            ),
            ListTile(
              onTap: (){
                tabController.animateTo(0);
              },
              title: Text(
                'All Tasks',
              ),
              subtitle: Text(
                'go to all tasks',
              ),
              leading: Icon(
                Icons.list_alt,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined
              ),
            ),
            ListTile(
              onTap: (){
                tabController.animateTo(1);
              },
              title: Text(
                'Complete Tasks',
              ),
              subtitle: Text(
                'go to complete tasks',
              ),
              leading: Icon(
                Icons.done,
              ),
              trailing: Icon(
                  Icons.arrow_forward_ios_outlined
              ),
            ),
            ListTile(
              onTap: (){
                tabController.animateTo(2);
              },
              title: Text(
                'Incomplete Tasks',
              ),
              subtitle: Text(
                'go to incomplete tasks',
              ),
              leading: Icon(
                Icons.cancel_outlined,
              ),
              trailing: Icon(
                  Icons.arrow_forward_ios_outlined
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          _selectedIndex = index;
          setState(() {

          });

        },
        selectedItemColor: Colors.amber[800],
        currentIndex:  _selectedIndex,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.school_rounded),
            label: 'School',
          ),

        ],
      ),
      body: TabBarView(
        controller: tabController,
          children: [
            AllTasksScreen(checkTask),
            CompleteTasksScreen(checkTask),
            IncompleteTasksScreen(checkTask),
          ]
      ),
    );
  }
}
