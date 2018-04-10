WORKDIR="$HOME/src" # Carpeta de trabajo
OPENCV_VERSION="3.3.1" # Version ce CV que buscas

if [ ! -e WORKDIR]; then
mkdir WORKDIR # si no exixste la carpeta de trabajo se crea
fi

cd ${WORKDIR}
if [[ ! -e ./opencv ]]; then
git clone https://github.com/opencv/opencv # si no existe una descarga de opencv previa, se descargara del repositorio de github
fi
cd opencv # entramos al repos descargado
git checkout ${OPENCV_VERSION} # vambiamos de version a la que se busca

if [ ! -e ../opencv-build]; then
mkdir ../opencv-build
fi
cd ../opencv-build
cmake ../opencv \
&& sudo make -j$(nproc) \
&& sudo make install -j$(nproc) \
&& sudo ldconfig 









