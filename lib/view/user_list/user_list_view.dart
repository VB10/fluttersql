import 'package:flutter/material.dart';
import './user_list_view_model.dart';

class UserListView extends UserListViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildFloatingActionButton,
      body: Card(elevation: 20, child: buildCenterBody),
    );
  }

  FloatingActionButton get buildFloatingActionButton {
    return FloatingActionButton(
      onPressed: () {
        saveModel();
        getUserList();
      },
    );
  }

  Center get buildCenterBody {
    return Center(
      child: Wrap(
        children: [
          buildWrapInputBody,
          ListView.builder(
            shrinkWrap: true,
            itemCount: userList.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(userList[index].userName),
              subtitle: Text(userList[index].age.toString()),
              trailing: Icon(
                Icons.check,
                color: userList[index].isMarried ? Colors.green : Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }

  Wrap get buildWrapInputBody {
    return Wrap(
      runSpacing: 20,
      children: [
        TextField(
          onChanged: (value) => userModel.userName = value,
          decoration: InputDecoration(
              hintText: "User Name", border: OutlineInputBorder()),
        ),
        TextField(
          onChanged: (value) => userModel.age = int.tryParse(value),
          decoration:
              InputDecoration(hintText: "Age", border: OutlineInputBorder()),
        ),
        TextField(
          onChanged: (value) => userModel.isMarried = value.isNotEmpty,
          decoration: InputDecoration(
              hintText: "Is Married", border: OutlineInputBorder()),
        ),
      ],
    );
  }
}
