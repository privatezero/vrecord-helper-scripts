# Need to have lasest version of Blackmagic Desktop video installed - currently https://www.blackmagicdesign.com/support/download/f3991269fb49440d9049fd5c41f44679/Linux

# For DV device use will need the following libraries installed prior to ffmpeg-dl compilation:
#    sudo apt-get install libiec61883-dev && \
#    sudo apt-get install libraw1394-dev &&\
#    sudo apt-get install libavc1394-dev && \
#    sudo apt-get install libavc1394-tools


wget -O ffmpeg-5.1.3.tar.bz2 https://ffmpeg.org/releases/ffmpeg-5.1.3.tar.bz2 && \
tar xjvf ffmpeg-5.1.3.tar.bz2 && \
wget -O v10.11.2.tar.gz https://github.com/amiaopensource/SoyDecklink/archive/v10.11.2.tar.gz && \
tar -xvzf v10.11.2.tar.gz && \
cd ffmpeg-5.1.3 && \
PATH="$HOME/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig" ./configure \
  --prefix="$HOME/ffmpeg_build" \
  --pkg-config-flags="--static" \
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
