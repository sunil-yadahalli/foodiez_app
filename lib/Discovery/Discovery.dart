import 'package:flutter/material.dart';

class Discovery extends StatefulWidget {
  @override
  _DiscoveryState createState() => _DiscoveryState();
}

class _DiscoveryState extends State<Discovery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Discovery'),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Image(
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: 250,
                image: AssetImage('assets/biriyani.jpg'),
              ),
            ),
            Container(
              color: Colors.yellow[600],
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Center(
                child: Text(
                  'Order Food Online',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Icon(Icons.share),
                    ),
                    Text('Share'),
                    Text(
                      '603',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Icon(Icons.rate_review),
                    ),
                    Text('Review'),
                    Text(
                      '656',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Icon(Icons.photo),
                    ),
                    Text('Photo'),
                    Text(
                      '23',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '12th main, Near pet point',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        Text(
                          'Jakkur Layput, Bangalore',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        Text(
                          '11:30AM to 11:00PM',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Call',
                        style: TextStyle(color: Colors.grey[600], fontSize: 18),
                      ),
                      Text(
                        '6549815165',
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cuisines',
                        style: TextStyle(color: Colors.grey[600], fontSize: 18),
                      ),
                      Text(
                        'India, Restaurent',
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Average Cost',
                        style: TextStyle(color: Colors.grey[600], fontSize: 18),
                      ),
                      Text(
                        '20 - 50',
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
