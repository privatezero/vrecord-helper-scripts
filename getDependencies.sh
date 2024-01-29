sudo apt-get install -y --no-install-recommends
# Build drequirements from https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu 
  autoconf \
  automake \
  build-essential \
  cmake \
  git-core \
  libass-dev \
  libfreetype6-dev \
  libgnutls28-dev \
  libmp3lame-dev \
  libsdl2-dev \
  libtool \
  libva-dev \
  libvdpau-dev \
  libvorbis-dev \
  libxcb1-dev \
  libxcb-shm0-dev \
  libxcb-xfixes0-dev \
  meson \
  ninja-build \
  pkg-config \
  texinfo \
  wget \
  yasm \
  zlib1g-dev \
  libunistring-dev \
  libaom-dev \
  libdav1d-dev \

# additional FFmpeg requirements
 libx264-dev \
 libx265-dev \
 libnuma-dev \
 libfdk-aac-dev \
 libfontconfig1-dev \
 libopenjp2-7-dev \
 libsnappy-dev \
 libtheora0 \
 # x11-xserver-utils \
 
 
#gtkdialog dependencies from https://github.com/ArkThis/vrecordX/blob/main/gtkdialog/notes-ubuntu_20.04.md
build-essential \
libgtk2.0-dev \
libgtk-3-dev \
libvte-dev \
libvte-2.91-dev \
libgtk-layer-shell-dev \
bison \
flex \
texinfo \
