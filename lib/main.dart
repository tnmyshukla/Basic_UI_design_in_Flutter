import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home: NinjaCard(),
));
class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  @override
  int ninjalevel=1;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Ninja Id Card'),
        centerTitle: true,
        backgroundColor:Colors.grey[500],
        elevation: 0.0,

      ),
      floatingActionButton:FloatingActionButton(
        child: Icon(
            Icons.add,
        ),
        backgroundColor: Colors.amber,
        onPressed: (){
          setState(() {
            ninjalevel++;
          });
        },
      ) ,
      body: Padding(
        padding:EdgeInsets.fromLTRB(30, 40,30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('asset/portrait.jpg'),
                radius: 120.0,
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.green,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,

              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Brett Lee',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Current Ninja Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,

              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$ninjalevel',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color:Colors.greenAccent,
                ),
                SizedBox(width: 10.0,),
                Text(
                    'tnmyshukla@gmail.com',
                  style:TextStyle(
                    color:Colors.blueAccent,
                    fontSize: 18.0,
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
