import 'package:app_animals/constant/const_animals_audio.dart';
import 'package:app_animals/constant/const_animals_icons.dart';
import 'package:app_animals/constant/const_animals_images.dart';
import 'package:app_animals/constant/const_animals_name.dart';
import 'package:app_animals/widgets/w_btn_animals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetLayoutBtnAnimals extends StatelessWidget {
  const WidgetLayoutBtnAnimals({super.key, required this.callBack});
  /// [callBack] return [image] and [audio] two type is String
  final void Function(String image , String audio) callBack;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  WidgetBtnAnimals(
                    name: ConstAnimalsName.lion, 
                    icon: ConstAnimalsIcon.lion, 
                    onClick: ()=>callBack(
                      ConstAnimalsImage.lion,
                      ConstAnimalsAudio.lion
                    )
                  ),
                  WidgetBtnAnimals(
                    name: ConstAnimalsName.cheetah, 
                    icon: ConstAnimalsIcon.cheetah, 
                    color: const Color.fromARGB(255, 168, 190, 149),
                    onClick: ()=>callBack(
                      ConstAnimalsImage.cheetah,
                      ConstAnimalsAudio.cheetah
                    ),
                  ),
                    WidgetBtnAnimals(
                    name: ConstAnimalsName.wolf, 
                    icon: ConstAnimalsIcon.wolf, 
                    onClick: ()=>callBack(
                      ConstAnimalsImage.wolf,
                      ConstAnimalsAudio.wolf
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  WidgetBtnAnimals(
                    name: ConstAnimalsName.elephant, 
                    icon: ConstAnimalsIcon.elephant, 
                    color: const Color.fromARGB(255, 168, 190, 149),
                    onClick: ()=>callBack(
                      ConstAnimalsImage.elephant,
                      ConstAnimalsAudio.elephant
                    ),
                  ),
                  WidgetBtnAnimals(
                    name: ConstAnimalsName.giraffe, 
                    icon: ConstAnimalsIcon.giraffe, 
                    onClick: ()=>callBack(
                      ConstAnimalsImage.giraffe,
                      ConstAnimalsAudio.giraffe
                    ),
                  ),
                  WidgetBtnAnimals(
                    name: ConstAnimalsName.crocodile, 
                    icon: ConstAnimalsIcon.crocodile, 
                    color: const Color.fromARGB(255, 168, 190, 149),
                    onClick: ()=>callBack(
                      ConstAnimalsImage.crocodile,
                      ConstAnimalsAudio.crocodile
                    ),
                  ),
                  ],
                )
              ),
              Expanded(
                child:Row(
                  children: [
                      WidgetBtnAnimals(
                    name: ConstAnimalsName.cat, 
                    icon: ConstAnimalsIcon.cat, 
                    onClick: ()=>callBack(
                      ConstAnimalsImage.cat,
                      ConstAnimalsAudio.cat
                    ),
                  ),
                    WidgetBtnAnimals(
                    name: ConstAnimalsName.dog, 
                    icon: ConstAnimalsIcon.dog, 
                    color: const Color.fromARGB(255, 168, 190, 149),
                    onClick: ()=>callBack(
                      ConstAnimalsImage.dog,
                      ConstAnimalsAudio.dog
                    ),
                  ),
                    WidgetBtnAnimals(
                    name: ConstAnimalsName.parrot, 
                    icon: ConstAnimalsIcon.parrot, 
                    onClick: ()=> callBack(
                      ConstAnimalsImage.parrot,
                      ConstAnimalsAudio.parrot
                    ),
                  ),
                ],
              )
            )
          ],
        )
      ),
    );
  }
}