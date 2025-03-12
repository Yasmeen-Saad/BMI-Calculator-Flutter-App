import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double heightValue = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF30324C),
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        // spacing: 10,
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              spacing: 20,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF30324C),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.male, size: 100, color: Colors.white,),
                        SizedBox(height: 10,),
                        Text('Male', style: TextStyle(fontSize: 22, color: Color(0xFF8B8C9E)),)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF30324C),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.female, size: 100, color: Colors.white,),
                        SizedBox(height: 10,),
                        Text('Female', style: TextStyle(fontSize: 22, color: Color(0xFF8B8C9E)),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF30324C),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Height', style: TextStyle(fontSize: 22, color: Color(0xFF8B8C9E)),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('${heightValue.round()}', style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
                      Text('cm', style: TextStyle(fontSize: 20, color: Colors.white),)
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFE83D67),
                      activeTrackColor: Color(0xFFE83D67),
                    ),
                    child: Slider(
                        value: heightValue,
                        min: 80,
                        max: 220,
                        onChanged: (value){
                          setState(() {
                            heightValue = value;
                          });
                        }
                    ),
                  )
                ],
              ),
            ),
          )),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              spacing: 20,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF30324C),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 10,
                      children: [
                        Text('Weight', style: TextStyle(fontSize: 22, color: Color(0xFF8B8C9E)),),
                        Text('60', style: TextStyle(fontSize: 60, color: Colors.white),),
                        Row(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: (){},
                              mini: true,
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              onPressed: (){},
                              mini: true,
                              child: Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF30324C),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 10,
                      children: [
                        Text('Age', style: TextStyle(fontSize: 22, color: Color(0xFF8B8C9E)),),
                        Text('26', style: TextStyle(fontSize: 60, color: Colors.white),),
                        Row(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: (){},
                              mini: true,
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              onPressed: (){},
                              mini: true,
                              child: Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
          Container(
            height: 80,
            width: double.infinity,
            color: Color(0xFFE83D67),
            child: MaterialButton(
                onPressed: (){},
              child: Text(
                'Calculate',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
