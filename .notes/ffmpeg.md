# `ffmpeg`

## Resources

1. [Donald Feury's Tutorial on Cutting, Frozen Frames and Metadata][donald_feury_1]


[donald_feury_1]: https://youtu.be/simSapaQOCE

## Cutting

```sh
ffmpeg -i sample.mp4 -ss <init> -to <cut> -c:v copy -c:a copy sample-cut.mp4
```

The `-c:v copy` part copies the encoding (codec) making the process go much faster. If you use `-c:v copy`, you might end up with frame imprecisions. In those cases, you can reencode things with, for example `h264_nvenc`. You can also use `-qp 16` for the quantization &mdash; the lower the higher the quality. Reencoding the audio could be done with something like `-c:a aac`.

Probing to see if everything went as expected:

```sh
ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 sample.mp4
```

## Concatenate Videos

Note that, if you don't have the **same video and audio encodings**, the following won't work &mdash; use another strategy then.

1. Create a text file (`.txt`) with an ordered list of the files you want to concatenate.
1. Concatenate them using:
    ```sh
    ffmpeg -f concat -i list.txt -c copy concat-sample.mp4
    ```

`.ts` files allow for file-like concatenation.

## Converting Videos to Other Formats

An example:

```sh
ffmpeg -i input.mkv output.mp4
```

## Frozen Frames Filter

```sh
ffmpeg -i %FILE -vf mpdecimate,setpts=N/FRAME_RATE/TB -an %OUT
```

Be careful, because this might delete too much stuff. That said, it could be used for timelapses, it filters everything into pure action.


## Metadata Info

```sh
mediainfo media.mp4
```
