import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'bar_n_draw.dart';
import 'class_users.dart';
import 'constanti.dart';

class LoadJSONnew extends StatefulWidget {
  static String rote = 'LoadJSONadd';
  final User user;
  const LoadJSONnew(this.user, {Key? key}) : super(key: key);

  @override
  _LoadJSONnewState createState() => _LoadJSONnewState();
}

class _LoadJSONnewState extends State<LoadJSONnew> {
  Future<List<Uzor>> fetchTodos() async {
    var response = await http.get(
        Uri.parse(urlGetZzzList + widget.user.id.toString())
    );
    if (response.statusCode == 200) {
      return List<Uzor>.from(
          jsonDecode(response.body).map((z) => Uzor.fromJson(z))
      );
    } else {
      throw Exception(
          'Failed to load' + widget.user.username.toString() + "'s todos"
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle? ts = Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.greenAccent);
    return Scaffold(
        appBar: bigBar(context),
        drawer: bigDrawer(context),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/epfon.jpeg'),
                fit: BoxFit.cover,
              )
          ),
          width: double.infinity,
          height: double.infinity,
          child: FutureBuilder(
            future: fetchTodos(),
            builder: (BuildContext context, AsyncSnapshot<List<Uzor>> snapshot) {
              if (snapshot.hasData) {
                return ListView(
                  padding: const EdgeInsets.all(10.0),
                  children: [
                    Text(chs(s: widget.user.username), textAlign: TextAlign.center, style: ts),
                    Text(chs(s: widget.user.phone), textAlign: TextAlign.center, style: ts),
                    Text(chs(s: widget.user.email), textAlign: TextAlign.center, style: ts),
                    Text(chs(s: widget.user.address?.getAddress()), textAlign: TextAlign.center, style: ts),
                    Text(chs(s: widget.user.company?.name), textAlign: TextAlign.center, style: ts),
                    const Divider(thickness: 3,),
                    for (var item in snapshot.data!)
                      Card(
                        color: Colors.transparent,
                        child: ListTile(
                          onTap: () {},
                          title: Text(chs(s: item.title), style: ts,),
                          trailing:
                          Checkbox(value: item.completed, onChanged: null),
                        ),
                      ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        )
    );
  }
}
