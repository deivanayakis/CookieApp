import 'package:cookieapp/cookie_detail.dart';
import 'package:flutter/material.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                _buildCard('Lava', '\$10', 'lava.jpg' ,false, false, context),
                _buildCard('Biscuits', '\$8', 'biscuits.jpg' ,true, true, context),
                _buildCard('Chocolate Scoop', '\$6', 'chocolatescoop.jpg' ,false, false, context),
                _buildCard('Wafer Cup Cake', '\$10', 'conecupcake.jpg' ,false, false, context),
                _buildCard('Cookie Candies', '\$3.6', 'cookiecandies.jpg' ,true, true, context),
                _buildCard('Cup Cakes', '\$4', 'cupcakes.jpg' ,false, false, context),
                _buildCard('Floral Cookies', '\$9', 'floralcookies.jpg' ,true, true, context),
                _buildCard('Ice Cream Cake', '\$16', 'icecake.jpg' ,false, false, context),
                _buildCard('Chocolate Dessert', '\$12', 'chocodessert.jpg' ,false, false, context),
                _buildCard('Chocolate Ice Cream', '\$5', 'chocoice.jpg' ,false, true, context),
                _buildCard('Wafer Ice Cream', '\$8.4', 'icewafer.jpg' ,true, true, context),
                _buildCard('Oreo Ice Cream', '\$11.6', 'oreoice.jpg' ,false, false, context),
                _buildCard('Strawberry Cake', '\$3.8', 'strawberrycake.jpg' ,false, false, context),
                _buildCard('Strawberry Wafer', '\$7.5', 'strawberrywafer.jpg' ,false, false, context),
                _buildCard('Vanilla Truffle', '\$10', 'vanillatruffle.jpg' ,false, false, context),
                _buildCard('Oreo Cake', '\$15', 'oreocake.jpg' ,false, true, context),
                _buildCard('Pudding', '\$20', 'pudding.jpg' ,true, true, context),
                _buildCard('Strawberry Dessert', '\$8', 'strawberrydessert.jpg' ,false, false, context),
                _buildCard('Puding Slices', '\$10', 'pudingslice.jpg' ,false, false, context),
                _buildCard('Chocolate Truffle', '\$16', 'truffle.jpg' ,false, true, context),
                _buildCard('Ice Cream', '\$6', 'icecream.jpg' ,false, true, context),
                _buildCard('Birthday Cake', '\$25', 'bcake.jpg' ,true, false, context),
                _buildCard('Cookies', '\$3.99', 'cookies.jpg' ,false, true, context),
                _buildCard('Donut', '\$5', 'donut.jpg' ,false, false, context),
              ],
            ),
          ),
          SizedBox(height: 15.0,)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CookieDetail(
              assetPath: imgPath,
              cookieprice: price,
              cookiename: name,
            ),
            ));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0
              )
            ],
            color: Colors.white
          ),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.end,
                children: [
                  isFavorite ? Icon(Icons.favorite,color: Color(0xFFEF7532),):
                  Icon(Icons.favorite_border,color: Color(0xFFEF7532),)
                ],
              ),
              ),
              Hero(
                tag: imgPath, 
                child: Container(
                  height: 600.0,
                  width: 500.0,
                  decoration: BoxDecoration(
                     image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.contain
                      )
                      )
                  ),
                ),
                SizedBox(height: 7.0,),
                Text(price,
                  style: TextStyle(
                    color: Color(0xFFCC8053),
                    fontFamily: 'Varela',
                    fontSize: 20.0
                  ),
                ),
                Text(name,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Varela',
                    fontSize: 18.0
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    color:Color(0xFFEBEBEB),
                    height: 1.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      if(!added) ...[
                        Icon(Icons.shopping_basket,
                        color: Color(0xFFD17E50),
                        size: 30.0,
                        ),
                        Text('Add to Cart',
                          style: TextStyle(
                            fontFamily: 'Varela',
                            color: Color(0xFFD17E50),
                            fontSize: 20.0
                          ),
                        )
                      ],
                      if (added) ...[
                        Icon(Icons.remove_circle_outline ,
                        color: Color(0xFFD17E50),
                        size: 20.0,
                        ),
                        Text('3',
                          style: TextStyle(
                            fontFamily: 'Varela',
                            color: Color(0xFFD17E50),
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0
                          ),
                        ),
                        Icon(Icons.add_circle_outline,
                          color: Color(0xFFD17E50),
                          size: 20.0,
                        ),
                      ]
                    ],
                    ),
                )  
          ],),
        ),
      ),
    );
  }
}
