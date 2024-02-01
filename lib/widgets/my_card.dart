import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uikitresponsive/utils/app-images.dart';
import 'package:uikitresponsive/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: AspectRatio(
        aspectRatio: 420 / 215,
        child: Container(
          decoration: ShapeDecoration(
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  Assets.assetsImagesMask,
                )),
            color: Color(0xFF4EB7F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(left: 32, right: 42, top: 16),
                subtitle: Text(
                  'Syah Bandi',
                  style: AppStyles.styleRegular16(context)
                      .copyWith(color: Colors.white),
                ),
                title: Text('Name card',
                    style: AppStyles.styleRegular14(context)
                        .copyWith(color: Colors.white)),
                trailing: SvgPicture.asset(
                  Assets.assetsImagesGallery,
                ),
              ),
              const Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '0918 8124 0042 8129',
                      style: AppStyles.styleSemiBold24(context)
                          .copyWith(color: Colors.white),
                    ),
                    Text('12/20 - 125',
                        style: AppStyles.styleRegular14(context)
                            .copyWith(color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              )
            ],
          ),
        ),
      ),
    );
  }
}
