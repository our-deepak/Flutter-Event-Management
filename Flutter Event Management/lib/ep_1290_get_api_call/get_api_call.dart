import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_notebook_22/ep_1290_get_api_call/PostModels.dart';
import 'package:flutter_notebook_22/main.dart';
import 'package:http/http.dart' as http;


class CallGetApi extends StatefulWidget {
  const CallGetApi({Key? key}) : super(key: key);

  @override
  State<CallGetApi> createState() => _CallGetApiState();
}



class _CallGetApiState extends State<CallGetApi> {

  //show the api data

  //add the api model + Add that plug-in  ...I already install that app

  List<PostModels> postList = [];
  Future<List<PostModels>> getPostApi() async {
    
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    
    if(response.statusCode == 200){
      postList.clear();
      
      for(Map i in data){
        postList.add(PostModels.fromJson(i));
      }
      return postList;
      
    } else {
      return postList;
    }
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Api Call'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Center(
          child: FutureBuilder(
            future: getPostApi(),
            builder: (context, snapshot){
              if(!snapshot.hasData) {
                return Text("Loading data");
              }
              else {
                return ListView.builder(itemBuilder: (context, index){
                  return Card(child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      SizedBox(
                        height: 15,
                      ),
                      Text('Id:  '+postList[index].id.toString(), style: TextStyle(fontSize: 22),),

                      Text('UserId:  '+postList[index].userId.toString(), style: TextStyle(fontSize: 22)),

                      Text('Title:  '+postList[index].title.toString(), style: TextStyle(fontSize: 22)),
                      Text('Body:  '+postList[index].body.toString(), style: TextStyle(fontSize: 22)),

                      SizedBox(
                        height: 15,
                      ),

                    ],
                  ));
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
