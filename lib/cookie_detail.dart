import 'package:flutter/material.dart';
import 'package:cookieapp/bottom_bar.dart';
import 'package:cookieapp/send.dart';

class CookieDetail extends StatelessWidget {
  late final assetPath, cookieprice, cookiename;

  CookieDetail({this.assetPath, this.cookieprice, this.cookiename});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'DoughDelight',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 20.0,
            color: Color(0xFF545D68),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              color: Colors.red[600],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Cookie',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF17532)),
            ),
          ),
          SizedBox(height: 15.0),
          Hero(
            tag: assetPath,
            child: Image.asset(
              assetPath,
              height: 250.0,
              width: 200.0,
              fit: BoxFit.contain,
            ),
          ),
           SizedBox(height: 20.0),
           Center(
            child: Text(
              cookieprice,
              style: TextStyle(
                  color: Colors.orange[900],
                  fontFamily: 'Varela',
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0),
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              cookiename,
              style: TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 24.0),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text(
                'Cold, creamy ice cream sandwiched between delicious wafers',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 16.0,
                  color: Color(0xFFB4B8B9)
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(25.0),
                 color: Color(0xFFF17532)
                ),
                child: Center(
                  child: ElevatedButton(
                   onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Send(
                      assetPath: this.assetPath,
                      cookieprice: this.cookieprice,
                      cookiename: this.cookiename,
                    ),
                    ));

                      print('Add to Cart pressed');
                    },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Color(0xFFF17532),
                  textStyle: TextStyle(
                    fontFamily: 'Varela',
                    
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    ),
                  ),
                  child: Text('Buy Now',
                    style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Varela',
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0),
                  ),
                ),
                ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
