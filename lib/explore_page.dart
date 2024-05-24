import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

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
              const SizedBox(height: 50),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                  Text(
                    'Explore                               ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.blue),
                      SizedBox(width: 4),
                      Text(
                        'Aspen, USA',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(Icons.arrow_drop_down, color: Colors.blue),
                    ],
                  ),],),
                ],
              ),
              const Text(
                    'Aspen',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              const SizedBox(height: 35),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 238, 247, 255),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Find things to do',
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryButton(text: 'Location', isSelected: true),
                  CategoryButton(text: 'Hotels'),
                  CategoryButton(text: 'Food'),
                  CategoryButton(text: 'Adventure'),
                  CategoryButton(text: 'Activities'),
                ],
              ),
              const SizedBox(height: 35),
              const SectionHeader(title: 'Popular'),
              const SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PlaceCard(
                      image: 'assets/alley_palace.jpg',
                      name: 'Alley Palace',
                      rating: '4.1',
                      onTap: () {
                        Navigator.pushNamed(context, '/detail');
                      },
                    ),
                    PlaceCard(
                      image: 'assets/coeurdes_alpes.jpeg',
                      name: 'Coeurdes Alpes',
                      rating: '4.5',
                      onTap: () {
                        Navigator.pushNamed(context, '/detail');
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const SectionHeader(title: 'Recommended'),
              const SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SmallPlaceCard(
                      image: 'assets/explore_aspen.jpeg',
                      name: 'Explore Aspen',
                      duration: '4N/5D',
                      onTap: () {
                        Navigator.pushNamed(context, '/detail');
                      },
                    ),
                    SmallPlaceCard(
                      image: 'assets/luxurious_aspen.jpg',
                      name: 'Luxurious Aspen',
                      duration: '2N/3D',
                      onTap: () {
                        Navigator.pushNamed(context, '/detail');
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryButton(text: 'Explore Aspen'),
                  CategoryButton(text: 'Luxurious Aspen'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  const CategoryButton({super.key, required this.text, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: isSelected ? const Color.fromARGB(255, 238, 247, 255) : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.blue : Colors.grey,
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'See all',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class PlaceCard extends StatelessWidget {
  final String image;
  final String name;
  final String rating;
  final VoidCallback onTap;

  const PlaceCard({super.key, 
    required this.image,
    required this.name,
    required this.rating,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        width: 200,
        height: 250, // Added height constraint
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      rating,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              bottom: 10,
              right: 10,
              child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SmallPlaceCard extends StatelessWidget {
  final String image;
  final String name;
  final String duration;
  final VoidCallback onTap;

  const SmallPlaceCard({
    Key? key,
    required this.image,
    required this.name,
    required this.duration,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        width: 200,
        height: 150, // Added height constraint
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  duration,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
