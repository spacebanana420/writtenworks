#set to powersave 2.5ghz first!

source_video="/home/space/Downloads/[Moe] Lucky☆Star [BD][1080p FLAC]/[Moe] Lucky☆Star - 01 [BD][1080p FLAC].mkv"
common_args="-y -hide_banner -t 35 -c:a copy"

ffmpeg -i "$source_video" $common_args -c:v mjpeg -q 20 -qmax 20 -pix_fmt yuv420p test_mjpeg.mkv

ffmpeg -i "$source_video" $common_args -c:v mjpeg -q 1 -qmin 1 -pix_fmt yuv420p test_mjpeg_max.mkv

ffmpeg -i "$source_video" $common_args -c:v mjpeg -q 30 -qmax 30 -pix_fmt yuv420p test_mjpeg_low.mkv

ffmpeg -i "$source_video" $common_args -c:v mjpeg -q 80 -qmax 80 -pix_fmt yuv420p test_mjpeg_verylow.mkv

ffmpeg -i "$source_video" $common_args -c:v libx264 -preset:v veryfast -crf 30 -g 0 -pix_fmt yuv420p test_x264_low.mkv

ffmpeg -i "$source_video" $common_args -c:v libx264 -preset:v ultrafast -crf 30 -g 0 -pix_fmt yuv420p test_x264_low_ultrafast.mkv

ffmpeg -i "$source_video" $common_args -c:v utvideo -pix_fmt yuv420p test_utvideo.mkv

ffmpeg -i "$source_video" $common_args -c:v cfhd -quality 12 -pix_fmt yuv422p10le test_cfhd_lowest.mkv

ffmpeg -i "$source_video" $common_args -c:v cfhd -quality 0 -pix_fmt yuv422p10le test_cfhd_max.mkv

ffmpeg -i "$source_video" $common_args -c:v dnxhd -profile:v dnxhr_hq -pix_fmt yuv422p test_dnxhr.mkv

common_args2="-ss 7.2 -y -loglevel quiet"

ffmpeg $common_args2 -i "test_mjpeg.mkv" -frames:v 1 screenshot_mjpeg.png
ffmpeg $common_args2 -i "test_mjpeg_max.mkv" -frames:v 1 screenshot_mjpeg_max.png
ffmpeg $common_args2 -i "test_mjpeg_low.mkv" -frames:v 1 screenshot_mjpeg_low.png
ffmpeg $common_args2 -i "test_mjpeg_verylow.mkv" -frames:v 1 screenshot_mjpeg_verylow.png
ffmpeg $common_args2 -i "test_x264_low.mkv" -frames:v 1 screenshot_x264_low.png
ffmpeg $common_args2 -i "test_x264_low_ultrafast.mkv" -frames:v 1 screenshot_x264_low_ultrafast.png
ffmpeg $common_args2 -i "test_utvideo.mkv" -frames:v 1 screenshot_utvideo.png
ffmpeg $common_args2 -i "test_cfhd_lowest.mkv" -frames:v 1 screenshot_cfhd_lowest.png
ffmpeg $common_args2 -i "test_cfhd_max.mkv" -frames:v 1 screenshot_cfhd_max.png
ffmpeg $common_args2 -i "test_dnxhr.mkv" -frames:v 1 screenshot_dnxhr.png
