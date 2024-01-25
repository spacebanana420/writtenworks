#3GHz

preargs1="-y -ss 5 -hide_banner -loglevel 36"
preargs2="-y -ss 50 -hide_banner -loglevel 36"
commonargs="-c:a copy -pix_fmt rgb24 -t 20"

ffmpeg $preargs1 -i "2024-01-13 23-30-56.avi" $commonargs -c:v utvideo test1_utvideo.avi
ffmpeg $preargs1 -i "2024-01-13 23-30-56.avi" $commonargs -c:v utvideo -pred median test1_utvideo_median.avi
ffmpeg $preargs1 -i "2024-01-13 23-30-56.avi" $commonargs -c:v libx264rgb -crf 0 -preset:v veryfast test1_x264very.avi
ffmpeg $preargs1 -i "2024-01-13 23-30-56.avi" $commonargs -c:v libx264rgb -crf 0 -preset:v ultrafast test1_x264ultra.avi
ffmpeg $preargs1 -i "2024-01-13 23-30-56.avi" $commonargs -c:v libx264rgb -crf 0 -preset:v veryfast -g 0 test1_x264very_intra.avi
ffmpeg $preargs1 -i "2024-01-13 23-30-56.avi" $commonargs -c:v libx264rgb -crf 0 -preset:v ultrafast -g 0 test1_x264ultra_intra.avi
ffmpeg $preargs1 -i "2024-01-13 23-30-56.avi" $commonargs -c:v png test1_png.avi


ffmpeg $preargs2 -i "2024-01-13 23-30-56.avi" $commonargs -c:v utvideo test2_utvideo.avi
ffmpeg $preargs2 -i "2024-01-13 23-30-56.avi" $commonargs -c:v utvideo -pred median test2_utvideo_median.avi
ffmpeg $preargs2 -i "2024-01-13 23-30-56.avi" $commonargs -c:v libx264rgb -crf 0 -preset:v veryfast test2_x264very.avi
ffmpeg $preargs2 -i "2024-01-13 23-30-56.avi" $commonargs -c:v libx264rgb -crf 0 -preset:v ultrafast test2_x264ultra.avi
ffmpeg $preargs2 -i "2024-01-13 23-30-56.avi" $commonargs -c:v libx264rgb -crf 0 -preset:v veryfast -g 0 test2_x264very_intra.avi
ffmpeg $preargs2 -i "2024-01-13 23-30-56.avi" $commonargs -c:v libx264rgb -crf 0 -preset:v ultrafast -g 0 test2_x264ultra_intra.avi
ffmpeg $preargs2 -i "2024-01-13 23-30-56.avi" $commonargs -c:v png test2_png.avi
