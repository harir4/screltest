import 'package:flutter/material.dart';
import 'package:screltest/modelview/dataController.dart';
import 'package:provider/provider.dart';
import 'package:screltest/view/loginScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<DataController>(context, listen: false).DataView();
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final data = context.watch<DataController>();
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              )),
        ),
        backgroundColor: Colors.purple,
      ),
      body: data.loading
          ? Center(child: CircularProgressIndicator())
          : data.dataList != null
              ? Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    itemCount: data.dataList!.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 4.5,
                        child: ListTile(
                          title: Text(
                            data.dataList![index].title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(data.dataList![index].body),
                        ),
                      );
                    },
                  ),
                )
              : AlertDialog(actions: [Text('no data')]),
    );
  }
}
