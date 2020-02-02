import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  var links = ['https://res.cloudinary.com/demo/image/upload/c_fill,w_100,h_100,g_face,dpr_2.0/smiling_man.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRILlzN9dN8GkTtsrtbRf9xZ4jp6tj2nWwd_QIQ0BSD4WAF8gpc&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLAVpV-fExBGHB3sBped4EkxGsOjxQnvLvgIVIsCalWOrJqjR9eA&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU_UKQ3XPKRJSOrCrKj8usp_g0DeKuVsxNyiLoV4Lpw7zW-m8oog&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfeNaufFCsp2ubWj1Ve-PY6tGdz1hVINGLHKnFIsmPAp73QQQZaQ&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMucdTgqoYOtc5HMfQgTfTke4z3gnog3hzv29ZivLYNx2dxoQevQ&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu_03Ye6RU7iCcE-o0Yt5kp8FAyvNPfnROuSgSDUUUAgglHehsRA&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQixVNlREqCCAe4Slubrj-EOo779YTOdsOHH3cTI0IDgmeizU5&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3e7QUFs06lWWkvCNZlL3ftsruZxXRoI-YglcsDUZAFPbnZRhl&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe23lNYe4twoyJytU95dpiT3FLzTc9LlXwiNDlepgW5_QpwgE_&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEeX11ymnBy7R0Jmw9Op1aCY3cIiy_5fezHHLiGctUOjU0BNw3pg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzM1pQcbqdv1bxErFuqOHSJ7O43ILPGdqiMsL4uNATjrzO5L859g&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPGuPEi4UkhSyrdosPmz3bcYIKeEmVeWeu4dCECHdwE_bFzZh_&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0O7KgcRspNvWjIuuP6HJeVHR9-La5P41WiWLYld6sxd0iDE0fEg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlbdzgOGWe-Ist4ap62cR-PLrOdvwSsD1NvLjiX1V9PRcp4h-iQw&s'];
  var name=['Cedric Gonzales','Sheldon Boyd','Jody Fisher','Francis Chambers','Chelsea Baldwin','Myrtle Blair','Aubrey Johnston','Casey Lyons','Jacob Nguyen','Laura Sharp','June Garrett','Antonio Shaw','Shawna Richardson','Cornelius Roy','Leah Hart'];
  var time=['10:30','10:45','09:55','11:05','12:20','09:35','09:40','10:25','14:10','14:45','14:35','16:35','11:10','14:55','16:10'];
  var message=['Be very careful with the path that',
  'They are gaining a lot of knowledge',
  'They are assimilating an abundance',
  'Your satisfaction is guaranteed.',
  'Your contentment is ensured.',
  'I am skillful because I had a great',
  'I am adept because I had a great',
  'My recent trip was quite satisfying.',
  'My recent peregrination was',
  'He is internationally known for',
  'He is globally prominent for making great',
  'It is often said that cats have nine',
  'It is often verbalized that felines have',
  'This... is... delicious!',
  'This... is... dainty!']; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:(){},
      backgroundColor:Color.fromRGBO(37, 211, 102, 1),
      child: Icon(
        Icons.add_call
      ), 
      
      ),
          body: ListView.builder(
        itemCount: 15, 
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Divider(height:0.0),
              ListTile(
                trailing: IconButton(icon: Icon(
                  Icons.call,
                  color: Color.fromRGBO(7, 94, 84, 1),
                ), onPressed: null),
                title: Text(name[index]),
                    
                subtitle: Text(time[index]),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(links[index])
                ),
              ),
            ],
          );
        }
      
      ),
    );
  }
}