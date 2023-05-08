import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class SnackBar_wid extends StatefulWidget {
  const SnackBar_wid({super.key});

  @override
  State<SnackBar_wid> createState() => _SnackBar_widState();
}

class _SnackBar_widState extends State<SnackBar_wid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('SnackBar'), centerTitle: true,),
      body: SafeArea(
        child: Center(
          child: ButtonTheme(
            minWidth: MediaQuery.of(context).size.width,
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
          
                ElevatedButton(
                  
                    onPressed: () => snackPosition('Top'),
                    child: Text('Top SnackBar')),
                ElevatedButton(
                    onPressed: () => snackPosition('Bottom'),
                    child: Text('Bottom SnackBar')),
                    ElevatedButton(
                    onPressed: () => snackPosition('1'),
                    child: Text('Snack with button press')),
                    ElevatedButton(
                    onPressed: () => snackPosition('2'),
                    child: Text('Snack with Tap')),
                    ElevatedButton(
                    onPressed: () => snackPosition('3'),
                    child: Text('Overlay Snackbar')),
                    ElevatedButton(
                    onPressed: () => snackPosition('4'),
                    child: Text('LeftBar Indicator')),
                    ElevatedButton(
                    onPressed: () => snackPosition('5'),
                    child: Text('Dismiss SnackBar')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  snackPosition(String text) {
    switch (text) {
      case 'Top':
        Get.snackbar("Hey Its Me", 'From Top Side',
            snackPosition: SnackPosition.TOP,
            colorText: Colors.red,
            backgroundColor: Colors.red[100],
            duration: Duration(milliseconds: 1000) );
        break;

      case 'Bottom':
        Get.snackbar("Hey Its Me", 'From Bottom Side',
            snackPosition: SnackPosition.BOTTOM,
            duration: Duration(milliseconds: 1000), 
            backgroundGradient: const LinearGradient(colors: [Colors.red,Colors.green]) );
        break;

        case '1':
        Get.snackbar("Press Retry Button", '',
            snackPosition: SnackPosition.BOTTOM,
            duration: Duration(milliseconds: 1000) ,
             mainButton: TextButton(onPressed: () {
               Get.snackbar("You Pressed Retry Button", '',
            snackPosition: SnackPosition.BOTTOM,
            );
             }, child: Text('Retry'))
            );
        break;

         case '2':
        Get.snackbar("Tap on ME", '',
        duration: Duration(milliseconds: 1000) ,
            snackPosition: SnackPosition.BOTTOM,
             onTap: (val){
              Get.snackbar(
                'You tap on snackbar', '',
                snackPosition: SnackPosition.BOTTOM);
             }
            );
        break;

        case '3':
        Get.snackbar("Blurred", '',
        duration: Duration(milliseconds: 1000) ,
            snackPosition: SnackPosition.BOTTOM,
             overlayBlur: 5
            );
        break;

        case '4':
        Get.snackbar("See Left bar", '',
        duration: Duration(milliseconds: 2000) ,
            snackPosition: SnackPosition.BOTTOM,
             leftBarIndicatorColor: Colors.black
            );
        break;
        case '5':
        Get.snackbar("Hold and swipe to top to Dismiss", '',
        duration: Duration(milliseconds: 2000) ,
            snackPosition: SnackPosition.BOTTOM,
             isDismissible: true,
             dismissDirection: DismissDirection.up
            );
        break;

        
      default:
        
        break;
    }
  }
}
