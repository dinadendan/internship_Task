import 'package:flutter/material.dart';
import 'package:internship_task/data/chatModel.dart';
import 'package:internship_task/data/storyModel.dart';

class messages3 extends StatelessWidget {

  final TextEditingController searchController = TextEditingController();
  List <ChatModel> chatModel =[
    ChatModel(
      image: 'assets/images/Ellipse 121.png',
      name: 'Jordan',
      message: 'Hii!',
    ),
    ChatModel(
      image: 'assets/images/Ellipse 122.png',
      name: 'Tim',
      message: 'Hii!',
    ),
    ChatModel(
      image: 'assets/images/22.png',
      name: 'James',
      message: 'Hii!',
    ),
  ];

  List <StoryModel> storyModel =[
    StoryModel(
      image: 'assets/images/Rectangle.png',
      name: 'Likes',
    ),
    StoryModel(
      image: 'assets/images/Rectangle 454.png',
      name: 'Tony',
    ),
    StoryModel(
      image: 'assets/images/Rectangle 458.png',
      name: 'James',
    ),
    StoryModel(
      image: 'assets/images/Rectangle 459.png',
      name: 'Jord',
    ),
  ];




  messages3({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF5F5F5),
        leading: const CircleAvatar(
          backgroundColor: Color(0xffF5F5F5),
          child: Image( image:AssetImage('assets/images/Ellipse 1.png'),
          ),
        ),
        title: const Text('Puzzels',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Nunito',
            color: Color(0xffFF5F8F),
          ),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){},
              icon: const ImageIcon(AssetImage('assets/images/setting4.png'),
              color: Color(0xff505050),),
          )
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: const Color(0xffF5F5F5),
            child: Column(
              children: [
                SizedBox(
                 height: 130,
                 child: ListView.separated(
                   scrollDirection: Axis.horizontal,
                   itemBuilder: (context,index) => buildItem(storyModel[index]) ,
                   itemCount: storyModel.length,
                   separatorBuilder: (BuildContext context, int index) => const SizedBox(
                     width: 20,
                   ),

                 ),
               ),
                Container(
                  alignment: AlignmentDirectional.center,
                  height: 50,
                  width: 304,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextFormField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      prefixIcon: ImageIcon(AssetImage('assets/images/searchnormal1.png')),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 20
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  height: 450,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListView.separated(
                    shrinkWrap: false,
                    scrollDirection: Axis.vertical,
                    itemBuilder:(context,index) => buildChatItem( chatModel[index]),
                    separatorBuilder: (BuildContext context, int index) => const SizedBox(
                      height: 20,
                    ),
                    itemCount:chatModel.length
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildItem(StoryModel sModel) => Stack(
    children: [
      Container(
        child: Image(image: AssetImage('${sModel.image}'),),
      ),
      Positioned(
        top: 90,
        right: 18,
        child:Container(
          width: 50,
          height: 16,
          decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Center(child: Text('${sModel.name}',
          style: TextStyle(
            fontFamily: 'Nunito',
          ),)),
        ),
      ),
    ],

  );

  Widget buildChatItem(ChatModel model) =>Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
         CircleAvatar(
          radius: 30,
          child: Image(image: AssetImage('${model.image}'),),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          children:  [
            Text('${model.name}',
              style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400
              ),
            ),
            Text(
              '${model.message}',
              style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 16
              ),),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            const Text(
              '13:10',
              style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 12
              ),
            ),
            Container(
              width: 22,
              decoration: const BoxDecoration(
                color: Color(0xffFF5F8F),
                shape: BoxShape.circle
              ),
              child: const Text(
                '  1',
              style: TextStyle(
                fontFamily: 'Nunito',

              ),),
            ),
          ],
        ),
      ],
    ),
  );
}
