import 'package:app_animals/constant/const_animals_images.dart';
import 'package:app_animals/constant/const_animals_name.dart';
import 'package:app_animals/constant/const_style.dart';
import 'package:app_animals/widgets/w_image_animals.dart';
import 'package:app_animals/widgets/w_layout_btn_animals.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';



class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
 /// [image] default image animals
  String image = ConstAnimalsImage.animals;

  ///[audioplayer] controller audio
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          ConstAnimalsName.animals,
          style:ConstStyle.styleAppBar
        ),    
        centerTitle: true,
        leading: const Icon(Icons.menu , size:30 , color:Colors.black),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:InkWell(
                  onTap: () {
                    image=ConstAnimalsImage.animals;
                    setState(() {});
              },
              child: 
                  const Image(image:AssetImage(ConstAnimalsImage.pawprint))
            ),
          ),
        ],
      ),
      body:Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color:Colors.transparent,
          border: Border.all(width: 4),
          borderRadius: BorderRadius.circular(20),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            WidgetImageAnimals(img: image),
            //line
            const Divider(
              color:  Colors.black,
              height: 0,
              thickness: 4,
            ),
            //button Animals
            WidgetLayoutBtnAnimals(
              callBack:(String image, String audio) {
                //update image
                this.image=image;
                //update audio 
                audioPlayer.setSourceAsset(audio);
                //resume the audio that has been paused or stopped 
                audioPlayer.resume();
                //redraw
                setState(() {});
              },
            )
          ],
        ),
      ) ,
    );
  }
}






