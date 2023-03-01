import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_app/data/models/info.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

///Tarjetas de presentacion
class InfoCard extends StatelessWidget {
  /// {@macro InfoCard}
  const InfoCard({required this.info, super.key});

  /// Info para mostrar.
  final Info info;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.sp),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 25.h,
              child: Image.network(
                info.imageUrl!,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info.title!,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 2.h),
                  const Text('Get Wonder'),
                  SizedBox(height: 2.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
