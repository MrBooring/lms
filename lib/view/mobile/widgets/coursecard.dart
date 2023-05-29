//  Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       width: size.width,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             width: size.width,
//                             height: size.height * .2,
//                             color: Colors.orange.shade100,
//                             child: Image.asset(
//                               "lib/assets/tempbanner/b3.jpg",
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 3),
//                             child: Text(
//                               "The Complete Guide: First Aid",
//                               maxLines: 2,
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: size.height * .02,
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 3),
//                             child: Text(
//                               "Dr Dinesh dayanand",
//                               maxLines: 2,
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.grey.shade700,
//                                 fontSize: size.height * .02,
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 3),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   "4.3",
//                                   style: TextStyle(
//                                     color: Colors.orange.shade800,
//                                   ),
//                                 ),
//                                 IgnorePointer(
//                                   child: RatingBar.builder(
//                                     initialRating: 3,
//                                     minRating: 1,
//                                     direction: Axis.horizontal,
//                                     allowHalfRating: true,
//                                     itemCount: 5,
//                                     itemSize: size.height * .02,
//                                     itemBuilder: (context, _) => Icon(
//                                       Icons.star,
//                                       color: Colors.amber,
//                                     ),
//                                     onRatingUpdate: (rating) {},
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 3),
//                             child: Text(
//                               "₹245",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),