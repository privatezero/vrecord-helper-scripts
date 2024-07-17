# Helps build vrecord dependency gtkdialog 
wget -O 0.8.4d.tar.gz https://github.com/puppylinux-woof-CE/gtkdialog/archive/0.8.4d.tar.gz && \
tar -xvzf 0.8.4d.tar.gz && rm 0.8.4d.tar.gz && \
cd gtkdialog-0.8.4d && \
./autogen.sh && \
make
