import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Widget Explain App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Text Widget'),
              Text(
                'Flutter',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text('Icon Widget'),
              Icon(Icons.favorite, size: 50, color: Colors.red),
              SizedBox(height: 20),
              Text('Image Widget'),
              Image.network(
                'https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&height=900&width=1600&fit=bounds',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              // Image(
              //   image: NetworkImage('https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&height=900&width=1600&fit=bounds'),
              //   width: 200,
              //   height: 200,
              //   fit: BoxFit.cover,
              // ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/flower.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text('Row'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, size: 50, color: Colors.green),
                  Icon(Icons.search, size: 50, color: Colors.blue),
                  Icon(Icons.favorite, size: 50, color: Colors.red),
                ],
              ),
              SizedBox(height: 20),
              Text('Container'),
              Container(
                width: 300,
                height: 60,

                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://www.wallpapergap.com/cdn/24/505/wallpaper-abstract-minimal-3840x2160.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
