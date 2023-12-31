#set to powersave 2.5ghz first!

source_video="/home/space/Downloads/[Moe] Lucky☆Star [BD][1080p FLAC]/[Moe] Lucky☆Star - 01 [BD][1080p FLAC].mkv"
common_args="-y -hide_banner -t 35 -c:a copy"

ffmpeg -i "$source_video" $common_args -c:v mjpeg -qmin 1 -q 1 -pix_fmt yuv420p mjpeg1.mkv
ffmpeg -i "$source_video" $common_args -c:v mjpeg -q 2 -pix_fmt yuv420p mjpeg2.mkv
ffmpeg -i "$source_video" $common_args -c:v mjpeg -q 3 -pix_fmt yuv420p mjpeg3.mkv
ffmpeg -i "$source_video" $common_args -c:v mjpeg -q 4 -pix_fmt yuv420p mjpeg4.mkv
ffmpeg -i "$source_video" $common_args -c:v mjpeg -q 5 -pix_fmt yuv420p mjpeg5.mkv
ffmpeg -i "$source_video" $common_args -c:v mjpeg -q 10 -pix_fmt yuv420p mjpeg10.mkv

common_args2="-ss 7.2 -y -loglevel quiet"
filterarg="-filter:v crop=iw/5:ih/5:600:300"

ffmpeg $common_args2 -i "mjpeg1.mkv" -frames:v 1 $filterarg screenshot_mjpeg1.png
ffmpeg $common_args2 -i "mjpeg2.mkv" -frames:v 1 $filterarg screenshot_mjpeg2.png
ffmpeg $common_args2 -i "mjpeg3.mkv" -frames:v 1 $filterarg screenshot_mjpeg3.png
ffmpeg $common_args2 -i "mjpeg4.mkv" -frames:v 1 $filterarg screenshot_mjpeg4.png
ffmpeg $common_args2 -i "mjpeg5.mkv" -frames:v 1 $filterarg screenshot_mjpeg5.png
ffmpeg $common_args2 -i "mjpeg10.mkv" -frames:v 1 $filterarg screenshot_mjpeg10.png
