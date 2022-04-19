import 'package:flutter/material.dart';

import 'main.dart';

PreferredSizeWidget? bigBar(BuildContext context) {
  return AppBar(
    title: Row(
      children: [
        Column(
          children: [
            Text('Навигатор', style: Theme
                .of(context)
                .textTheme
                .bodyText2?.copyWith(color: Colors.teal)),
          ],
        ),
        Expanded(child: Container(),),
      ],
    ),
  );
}

Widget? bigDrawer(BuildContext context) {
  return SizedBox(width: 350,
    child: Container(
      color: const Color.fromRGBO(0, 0, 0, 0.5),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Image.asset('assets/f.png'),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Divider(height: 20, thickness: 2, indent: 20, endIndent: 0, color: Colors.red,),
                ListTile(
                  leading: const Icon(Icons.login, color: Colors.red,),
                  title: const Text('Авторизация', style: TextStyle(color: Colors.yellow),),
                  onTap: () => Navigator.pushNamed(context, '/'),
                ),
                const Divider(height: 20, thickness: 2, indent: 20, endIndent: 0, color: Colors.red,),
                ListTile(
                  leading: const Icon(Icons.login, color: Colors.red,),
                  title: const Text('Регистрация', style: TextStyle(color: Colors.yellow),),
                  onTap: () => Navigator.pushNamed(context, '/RP'),
                ),
                const Divider(height: 20, thickness: 2, indent: 20, endIndent: 0, color: Colors.red,),
                ListTile(
                  leading: const Icon(Icons.login, color: Colors.red,),
                  title: const Text('Список', style: TextStyle(color: Colors.yellow),),
                  onTap: () {
                    if (authorized) {
                      Navigator.pushNamed(context, '/LJ');
                    }
                    else {
                      haveFail(context);
                    }
                  },
                ),
                const Divider(height: 20, thickness: 2, indent: 20, endIndent: 0, color: Colors.red,),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}






//
// Widget? bigDrawer(BuildContext context) {
//   double cirk=8.0;
//   return SizedBox(width: 300,
//     child:
//     ListView(
//       padding: EdgeInsets.zero,
//       children: [
//         DrawerHeader(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(cirk)),
//             color: Colors.white,
//           ),
//           child: Image.asset('assets/f.png'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(20),
//           child: Container(
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(Radius.circular(cirk))
//               ),
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: const Icon(Icons.login),
//                     title: const Text('Авторизация'),
//                     onTap: () => Navigator.pushNamed(context, '/'),
//                   ),
                  // ListTile(
                  //   leading: const Icon(Icons.login),
                  //   title: const Text('Регистрация'),
                  //   onTap: () => toRegPage(context),
                  // ),
                  // ListTile(
                  //   leading: const Icon(Icons.login),
                  //   title: const Text('Загрузка'),
                  //   onTap: () => toLoadJSON(context),
                  // ),
                  // ListTile(
                  //   leading: const Icon(Icons.login),
                  //   title: const Text('Список (кейс)'),
                  //   onTap: () => toShowList(context),
                  // ),
                  // ListTile(
                  //   leading: const Icon(Icons.login),
                  //   title: const Text('Данные (кейс)'),
                  //   onTap: () => toDataManage(context),
                  // ),
                  // ListTile(
                  //   leading: const Icon(Icons.login),
                  //   title: const Text('Сеть (кейс)'),
                  //   onTap: () => toNetPage(context),
                  // ),
//                 ],
//               )
//
//           ),
//         ),
//       ],
//     ),
//   );
// }
