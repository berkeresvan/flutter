import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:json_http/model/user_model.dart';

class RemoteApi extends StatefulWidget {
  const RemoteApi({super.key});

  @override
  State<RemoteApi> createState() => _RemoteApiState();
}

class _RemoteApiState extends State<RemoteApi> {
  Future<List<UsersModel>> _getUserList() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/users');
      List<UsersModel> _userList = [];
      if (response.statusCode == 200) {
        _userList =
            (response.data as List).map((e) => UsersModel.fromMap(e)).toList();
      }
      return _userList;
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      return Future.error(e.message.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    _getUserList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('remote api with Dio'),
      ),
      body:  Center(
        child: FutureBuilder<List<UsersModel>>(
            future: _getUserList(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(itemBuilder: (context,index){
                  var user = userslist[index];
                  return ListTile(
                    title: Text(),
                  )
                },itemCount: userlist.length,);
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {
                return CircularProgressIndicator();
              }
            }),
      ),
    );
  }
}
