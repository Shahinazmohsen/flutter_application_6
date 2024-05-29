import 'package:flut_grouped_buttons/flut_grouped_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_6/pages/Room_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selectedDate= DateTime.now();
  double sliderValue=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Android ATC Hotel',style: TextStyle(color: Colors.white),
      ),backgroundColor: Colors.orange)
      
      ,body: 
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: 
              Container(height: 800,
              
                child: Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(children: [Container(height:100,
                               width:1000,
                      child: Image.asset('assets/IMG_6994.JPG',fit: BoxFit.fitWidth,)),
                     
                             
                      Row(
                        children: [ Text('Check In Date :${selectedDate.year} :${selectedDate.month}:${selectedDate.day}')
                          ,IconButton(onPressed:() async{
                             var result =await showDatePicker(context: context,initialDate: selectedDate, firstDate: DateTime.now(), lastDate: DateTime(2025));
                                         ;if (result !=null){
                          selectedDate = result;
                                         }
                                         setState(() {
                                         });
                         
                                         
                          }, icon: Icon(Icons.calendar_month)),
                          
                        ],
                      )
                    
                      ,Row(
                        children: [ Text('Check Out Date :${selectedDate.year} :${selectedDate.month}:${selectedDate.day}')
                          ,IconButton(onPressed:() async{
                             var result =await showDatePicker(context: context,initialDate: selectedDate, firstDate: DateTime.now(), lastDate: DateTime(2025));
                                         ;if (result !=null){
                          selectedDate = result;
                                         }
                                         setState(() {
                                         });
                                                                 
                                         
                          }, icon: Icon(Icons.calendar_month))]),
                    
                          Row(children: [
                            Text('Adults:0.0'), Slider(
                              divisions: 6,
                              max: 6,
                              label: '${sliderValue}',
                              value: sliderValue
                              , onChanged:(value) {
                              sliderValue= value;
                              setState(() {
                                
                              });
                            })
                          ],)     
                                    
                            ,Row(children: [
                            Text('children:0.0'), Slider(
                              divisions: 6,
                              max: 6,
                              label: '${sliderValue}',
                              value: sliderValue
                              , onChanged:(value) {
                              sliderValue= value;
                              setState(() {
                                
                              });
                            })
                          ],)     
                                    
                                    
                         ,
                          
                           Row(crossAxisAlignment:CrossAxisAlignment.start,
                             children: [
                               Text('Extras:',textAlign: TextAlign.left,),
                             ],
                           )
                         
                        
                        ,FlutGroupedButtons<String>(data:['Breakfast(10 USD/Day)',
                        'Internet WIFI(5 USD/Day)',
                        'Parking(5 USD/Day)',
                        'Swimming Pool(10 USD/Day)'
                     
                        ], onChanged: (value) {
                          print(value);
                        })       
                         ,Container
                         (padding:EdgeInsets.only(left: 10),
                          
                          
                          child:
                         
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('View:'),
                            ],
                          )),
                     
                               
                          FlutGroupedButtons<String>(isRadio: true,
                            data: ['City View','Pool View'], onChanged: (value) {
                            print(value);
                            
                          })     
                          ,TextButton(style:TextButton.styleFrom(
      backgroundColor: Colors.orange,foregroundColor: Colors.white
    ) ,
                            
                            onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>RoomListPage()));}, child: Text('Next'))
                               
                               ,]),
                  ),),
              ),
                           
              ),
           );
        
      


  }
}