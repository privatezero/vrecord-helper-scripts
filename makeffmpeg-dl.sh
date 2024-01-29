wget -O ffmpeg-5.1.4.tar.bz2 https://ffmpeg.org/releases/ffmpeg-5.1.4.tar.bz2 && \
tar xjvf ffmpeg-5.1.4.tar.bz2 && \
wget -O v10.11.2.tar.gz https://github.com/amiaopensource/SoyDecklink/archive/v10.11.2.tar.gz && \
tar -xvzf v10.11.2.tar.gz && \
cd ffmpeg-5.1.4 && \
PATH="$HOME/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig" ./configure \
  --pkg-config-flags="--static" \
  --progs-suffix='-dl' \
  --extra-cflags="-I$HOME/ffmpeg_build/include" \
  --extra-ldflags=-L../SoyDecklink-10.11.2/DecklinkSdk/Linux/include/\
  --extra-ldflags="-L$HOME/ffmpeg_build/lib" \
  --extra-cflags=-I../SoyDecklink-10.11.2/DecklinkSdk/Linux/include/\
  --extra-libs="-lpthread -lm" \
  --ld="g++" \
  --bindir="$HOME/bin" \
  --enable-gpl \
  --enable-libfreetype \
  --enable-libmp3lame \
  --enable-libopenjpeg \
  --enable-libopus \
  --enable-libsnappy \
  --enable-libtheora \
  --enable-libvorbis \
  --enable-libvpx \
  --enable-libx264 \
  --enable-libx265 \
  --enable-libxvid \
  --enable-libfontconfig \
  --disable-htmlpages \
  --disable-libjack \
  --disable-indev=jack \
  --enable-nonfree \
  --enable-decklink \
  --enable-libiec61883 \
  && PATH="$HOME/bin:$PATH" make
