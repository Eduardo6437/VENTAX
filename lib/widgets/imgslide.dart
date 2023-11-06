// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:responsive_builder/responsive_builder.dart';
// import 'image_slider_indicator.dart';
// import 'text_component.dart';
//
// class ImageSlider extends StatefulWidget {
//   @override
//   _ImageSliderState createState() => _ImageSliderState();
// }
//
// class _ImageSliderState extends State<ImageSlider> {
//   int _currentIndex = 0;
//   final List<Map<String, String>> _images = [
//     {
//       'imagePath': 'assets/login_img/login-1.svg',
//       'text': 'Fácil manejo de tu tienda',
//     },
//     {
//       'imagePath': 'assets/login_img/login-2.svg',
//       'text': 'Reportes de ventas',
//     },
//     {
//       'imagePath': 'assets/login_img/login-7.svg',
//       'text': 'Ve crecer tus negocios',
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveBuilder(
//       builder: (context, sizingInformation) {
//         double imageWidth = sizingInformation.deviceScreenType == DeviceScreenType.desktop
//             ? 400.0
//             : 200.0;
//         double imageHeight = sizingInformation.deviceScreenType == DeviceScreenType.desktop
//             ? 500.0
//             : 250.0;
//
//         return Center(
//           child: Container(
//             alignment: Alignment.center,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     CarouselSlider(
//                       items: _images.map((imageInfo) {
//                         return Column(
//                           children: [
//                             SvgPicture.asset(
//                               imageInfo['imagePath']!,
//                               width: imageWidth,
//                               height: imageHeight,
//                             ),
//                             //  SizedBox(height: 10.0),16251082
//                             Expanded(
//                               child: ImageText(text: imageInfo['text'] ?? ''),
//                             ),
//                           ],
//                         );
//                       }).toList(),
//                       options: CarouselOptions(
//                         height: imageHeight + 150.0,
//                         autoPlay: true,
//                         autoPlayInterval: Duration(seconds: 3),
//                         onPageChanged: (index, reason) {
//                           setState(() {
//                             _currentIndex = index;
//                           });
//                         },
//                       ),
//                     ),
//                     ImageSliderIndicator(
//                       currentIndex: _currentIndex,
//                       itemCount: _images.length,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
