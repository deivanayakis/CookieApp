import 'package:cookieapp/bottom_bar.dart';
import 'package:cookieapp/cookie_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cookies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController; // Declare _tabController

  @override
  void initState() {
    super.initState();
    // Initialize the TabController with vsync
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the TabController when no longer needed
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {},
        ),
        title: Text(
          'DoughDelight',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 42.0,
            fontWeight: FontWeight.bold,
            color: Colors.orange[900],
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
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text(
            'Categories',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.0),
          TabBar(
            controller: _tabController, // Attach the TabController here
            indicatorColor: Colors.transparent,
            labelColor: Color(0xFFC88D67),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45.0),
            unselectedLabelColor: Color(0xFFCDCDCD),
            tabs: [
              Tab(
                child: Text(
                  'Cookies',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Ice Creams',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Cakes',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController, // Attach the TabController here
              children: [
                CookiePage(),
                CookiePage(),
                CookiePage(),
              ],
            ),
          ),
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
class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String label;

  PasswordField({required this.controller, required this.label});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}
class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: widget.label,
        border: OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: _togglePasswordVisibility,
        ),
      ),
    );
  }
}
class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            PasswordField(controller: _passwordController, label: 'Password'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Perform login logic here
                String username = _usernameController.text;
                String password = _passwordController.text;
                print('Username: $username, Password: $password');
                // Navigate to CookiePage after successful login
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Text('Login'),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
              child: Text('Don\'t have an account? Register'),
            ),
          ],
        ),
      ),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  final TextEditingController _cfpwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _locationController,
              decoration: InputDecoration(
                labelText: 'Location',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _mobileController,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 16),
            PasswordField(controller: _pwdController, label: 'Password'),
            SizedBox(height: 16),
            PasswordField(controller: _cfpwdController, label: 'Confirm Password'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Perform registration logic here
                String name = _nameController.text;
                String location = _locationController.text;
                String mobile = _mobileController.text;
                String pwd = _pwdController.text;
                print('Name: $name, Location: $location, Mobile: $mobile, Password: $pwd');
                // Navigate back to LoginPage after successful registration
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Register'),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Already have an account? Login'),
            ),
          ],
        ),
      ),
    );
  }
}