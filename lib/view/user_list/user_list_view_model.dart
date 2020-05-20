import 'package:flutter/material.dart';
import 'package:fluttersql/view/user_list/model/user_database_provider.dart';
import 'package:fluttersql/view/user_list/model/user_model.dart';
import './user_list.dart';

abstract class UserListViewModel extends State<UserList> {
  // Add your state and logic here

  UserDatabaseProvide userDatabaseProvider;

  UserModel userModel = UserModel();
  List<UserModel> userList = [];

  Future getUserList() async {
    userList = await userDatabaseProvider.getList();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    userDatabaseProvider = UserDatabaseProvide();
    userDatabaseProvider.open();
  }

  Future<void> saveModel() async {
    final result = await userDatabaseProvider.insertItem(userModel);
    print(result);
  }
}
