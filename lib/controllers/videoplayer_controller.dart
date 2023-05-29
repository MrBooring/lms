import 'package:get/get.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class CourseVideoPlayerController extends GetxController {
  late final VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void onInit() {
    videoPlayerController =
        VideoPlayerController.asset("lib/assets/video/butterfly.mp4");
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      looping: true,
      aspectRatio: 16 / 9,
      autoInitialize: true,
    );

    super.onInit();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }
}
