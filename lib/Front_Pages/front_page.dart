import 'package:flutter/material.dart';
import 'package:innovative_task1/Home_Page/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: SizedBox(
                height: 200,
                child: Image(
                  image: AssetImage('frontPageLogo.png')
                ),
              ),
            ),
            Center(
              child: Text('Mobile',
                style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(-4, 6),
                      blurRadius: 3,
                      color: Color.fromRGBO(175, 172, 172, 1.0)
                    )
                  ],
                  fontSize: 55,
                  fontFamily: 'StickNoBills',
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(10, 4, 37, 0.9921568627450981)
                )
              )
            ),
            Center(
              child: Text('Programming',
                style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(-4, 6),
                      blurRadius: 3,
                      color: Color.fromRGBO(175, 172, 172, 1.0)
                    )
                  ],
                  fontSize: 55,
                  fontFamily: 'StickNoBills',
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(10, 4, 37, 0.9921568627450981)
                )
              ),
            ),
            Center(
              child: Text('Innovative Task',
                style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(-4, 6),
                      blurRadius: 3,
                      color: Color.fromRGBO(175, 172, 172, 1.0)
                    )
                  ],
                  fontSize: 20,
                  fontFamily: 'BowlbyOneSC',
                  fontStyle: FontStyle.italic,
                  color: Color.fromRGBO(10, 4, 37, 0.9921568627450981)
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 50,
        width: 200,
        child: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(10, 4, 37, 0.9921568627450981),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28)
          ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage()
              )
            );
          },
          child: const Text('Enter!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
