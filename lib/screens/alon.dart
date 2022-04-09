import 'package:flutter/material.dart';
import 'package:recipes/screens/home.dart';
import 'package:recipes/utils/datatype.dart';

class HomeAlon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var body = Container(
      color: Theme.of(context).primaryColor,
      child: GridView.builder(
          shrinkWrap: false,
          itemCount: Data.type.length,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(
                            //recipes: Data.recipes[index],
                          )));
                },
                child: Card(
                  color: Theme.of(context).accentColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 50,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                            child: Hero(
                              tag: Data.type[index].id,
                              child: FadeInImage(
                                image:
                                NetworkImage(Data.type[index].imageUrl),
                                fit: BoxFit.cover,
                                placeholder:
                                AssetImage('assets/images/loading.gif'),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(

                            Data.type[index].title,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff263341),
        title: Text('Type of food'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: body,
    );
  }//article
}