import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
Stack(
children: [
Container(
height: 400,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(30),
image: const DecorationImage(
image: AssetImage('assets/coeurdes_alpes.jpeg'),
fit: BoxFit.cover,
),
),
),
Positioned(
top: 20,
left: 20,
child: Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
child: IconButton(
icon: const Icon(Icons.arrow_back),
onPressed: () {
Navigator.pop(context);
},
),
),
),
const Positioned(
bottom: -10,
right: 20,
child: CircleAvatar(
backgroundColor: Colors.white,
child: Icon(
Icons.favorite,
color: Colors.red,
),
),
),
],
),
const SizedBox(height: 30),
const Row(
children: [
SizedBox(height: 20),
Text(
'Coeurdes Alpes',
style: TextStyle(
fontSize: 30,
fontWeight: FontWeight.bold,
),
),
Spacer(),
Text(
'Show map',
style: TextStyle(
fontSize: 16,
color: Colors.blue,
),
),
],
),
const Row(
  children: [
    Icon(Icons.star, color: Colors.yellow, size: 16),
    SizedBox(width: 4),
    Text(
    '4.5 (355 Reviews)',
    style: TextStyle(
    fontSize: 16,
    color: Colors.grey,
    ),
    ),
  ],
),
const SizedBox(height: 10),
const Text(
'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining, shopping and ....',
style: TextStyle(
fontSize: 16,
color: Colors.grey,
),
),
const Row(children: [
SizedBox(height: 10),
Text(
'Read more',
style: TextStyle(
fontSize: 16,
color: Colors.blue,
),
),
Icon(Icons.arrow_drop_down, color: Colors.blue),],),
const SizedBox(height: 40),
const Text(
'Facilities',
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 10),
const Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
FacilityCard(
icon: Icons.wifi,
label: 'Heater',
),
FacilityCard(
icon: Icons.restaurant,
label: 'Dinner',
),
FacilityCard(
icon: Icons.bathtub,
label: 'Tub',
),
FacilityCard(
icon: Icons.pool,
label: 'Pool',
),
],
),
       const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Price\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: '\$199',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Row(
                  children: [
                    Text(
                      'Book Now',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),

],
),
),
),
);
}
}

class FacilityCard extends StatelessWidget {
final IconData icon;
final String label;

const FacilityCard({super.key, required this.icon, required this.label});

@override
Widget build(BuildContext context) {
return Container(
      width: 80,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 233, 246, 254),
        borderRadius: BorderRadius.circular(10),
      ),
      child : Column(
      children: [
        Icon(
          icon,
          size: 40,
          color: Colors.grey[400],
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    ),
);
}
}