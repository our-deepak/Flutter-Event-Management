import 'package:flutter/material.dart';



class EventBookingHomePage extends StatefulWidget {
  const EventBookingHomePage({Key? key}) : super(key: key);

  @override
  State<EventBookingHomePage> createState() => _EventBookingHomePageState();
}

class _EventBookingHomePageState extends State<EventBookingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: EdgeInsets.all(16.0),

              child: Row(
                children: [
CircleAvatar(),

                  SizedBox(
                    width: 12,
                  ),

                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi Azam Baloch", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),

                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,
                          color: Colors.cyan,),

                          Text("Pakistan")
                        ],
                      )

                    ],
                  ),
                  Spacer(),

                  SizedBox(
                    height: 32,
                    width: 32,
                    child: Stack(
                      children: [
                        Positioned(child: IconButton(onPressed: (){},
                            icon: Icon(Icons.notifications_none, color: Colors.cyan,))),
                        Positioned(
                            right: 0,
                            top: 0,
                            child: CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.red,

                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Text("Finding the Amazing Events Near you",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),

                  SizedBox( height: 8),

                  Row(
                    children: [
                      Icon(Icons.location_on,
                        color: Colors.orange,
                        size: 14,),

                      Text("258 Event Around you",)
                    ],
                  ),

                ],
              ),
            ),


            Container(
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 0),
              height: 54,
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius:  BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Seach Events",
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),

            SizedBox(
              height: 16,
            ),

            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.orange[50],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16)
                ),
              ),
              child:  SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),//past copy that line

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                     Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Category', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),),

                            TextButton(onPressed: (){}, child: Text('See All'),)
                          ],
                        ),




                      Container(
                        margin: EdgeInsets.only(left: 6),
                        height: 54,

                        child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                         return Container(
                           margin: EdgeInsets.only(right: 16),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,vertical: 2
                            ),
                            decoration: BoxDecoration(
                              color: Colors.indigo[50],
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.music_note,color: Colors.amber,),
                                ),
                                SizedBox(width: 8,),
                                Text('Music')

                              ],
                            ),
                          );

                        }

                        ),
                      ),


                      SizedBox(
                        height: 10 ,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Newest Event', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),),

                          TextButton(onPressed: (){}, child: Text('See All'),)
                        ],
                      ),




                      Container(
                        margin: EdgeInsets.only(left: 6),
                        height:  240,

                        child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 200,
                                margin: EdgeInsets.only(right: 15),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8,vertical: 2
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24),
                                ),


                             /*   child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.music_note,color: Colors.amber,),
                                    ),
                                    SizedBox(width: 8,),
                                    Text('Music')

                                  ],
                                ),*/
                              );

                            }

                        ),
                      ),

                      SizedBox(
                        height: 10 ,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Treading Event', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),),

                          TextButton(onPressed: (){}, child: Text('See All'),)
                        ],
                      ),


                      ...List.generate(4, (index) => Container(
                        height: 120,
                        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: const BoxDecoration(
                          color: Colors.white
                        ),

                      ))


                      //

                    ],


                  ),
                ),
              ),
              
            )),

          ],
        ),
      ),
    );
  }
}
