import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Seva's first app"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://i.mycdn.me/image?id=876025808146&plc=WEB&tkn=*SdEa5rEADJ6q0WT2aTEMOgNN8C4&fn=sqr_288'),
          ),
        )),
  ));
  _makeGetRequest();
}

_makeGetRequest() async {
  // make GET request
  String url = 'http://localhost:8080/vineyard/v1/rows';
  Response response = await get(url);
  // sample info available in response
  int statusCode = response.statusCode;
  Map<String, String> headers = response.headers;
  String contentType = headers['content-type'];
  String json = response.body;
  // TODO convert json to object...
}
