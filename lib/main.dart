import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapgas/views/About.dart';
import 'package:mapgas/views/SideBar.dart';
import 'package:mapgas/views/GoogleMapsBody.dart';
import 'package:mapgas/views/utils/FooterMenu.dart';
import 'package:mapgas/views/utils/TopMenu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MapGas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
      ),

      home: const MyHomePage(title: 'Flutter Map Gas'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final int _pageIndex = 0;
  late PageController pc;
  String _title = 'Regiões verdes';

  void _updateTitle(String newTitle) {
    setState(() {
      _title = newTitle;
    });
  }

  @override
  void initState(){
    super.initState();
    pc = PageController(initialPage: _pageIndex);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavSideBar(
        slidePage: (page)=>{
          pc.animateToPage(
              page,
              duration: const Duration(milliseconds: 400),
              curve: Curves.ease
          )
        },
          onItemTapped: (title) {
            _updateTitle(title);
            _scaffoldKey.currentState?.closeDrawer();
          },
      ),
      extendBody: true,
      appBar: TopMenu(scaffoldKey: _scaffoldKey, title: _title),
      bottomNavigationBar: FooterMenu(
        isHome: true,
        slidePage: (pagina) {
          pc.animateToPage(
              pagina,
              duration: const Duration(milliseconds: 400),
              curve: Curves.ease
          );
        },
        onItemTapped: (title) {
          _updateTitle(title);
          _scaffoldKey.currentState?.closeDrawer();
        },
      ),
      // body: RegisterGasStation(),
      body: PageView(
        physics: new NeverScrollableScrollPhysics(),
        controller: pc,
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[
              const GoogleMapsBody(),
              textField(),
            ],
          ),
          const About()
        ],
      )

    );
  }
}



Padding textField(){
  return Padding(
    padding: EdgeInsets.only(top: 12, left: 15, right: 15),
    child: TextFormField(
      keyboardType: TextInputType.streetAddress,
      decoration: InputDecoration(
        prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Color(0xffFFFFFF),),
        hintText: 'Digite a região que deseja consultar',
        contentPadding: EdgeInsets.only(top: 12),
        filled: true,
        fillColor: Color(0x460A0A0A),
        border: InputBorder.none,
        hintStyle: const TextStyle(
          fontSize: 14,
          color: Color(0xffFFFFFF),
        ),
      ),
    )
  );

}

