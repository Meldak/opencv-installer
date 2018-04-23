GCC_VERSION="5.5.0" #Aqui define la version de GCC que deseas instalar
WORKDIR="$HOME/src" #Aqui define el directorio en donde instalar el codigo fuente

if [ ! -e WORKDIR]; then
mkdir $WORKDIR # si no exixste la carpeta de trabajo se crea
fi

# Instalamos algunas dependencias para CentOS, en Ubuntu marcara error en el comando yum e ignorara estas lineas.
#sudo yum -y groupinstall 'Development Tools'
#yum install -y gmp-devel mpfr-devel libmpc-devel

sudo apt-get install -y build-essential

# Descargamos el codigo fuente
echo ">>>Descargando libreria GCC ${GCC_VERSION} ..."
cd $WORKDIR
wget --no-verbose http://www.netgull.com/gcc/releases/gcc-${GCC_VERSION}/gcc-${GCC_VERSION}.tar.gz

echo ">>>Extrayendo GCC ${GCC_VERSION} en: ${WORKDIR}"
# Descomprimimos el codigo fuente
tar xzf gcc-${GCC_VERSION}.tar.gz

echo ">>>Instalado prerequisitos...."
# Descargamos los prerequisitos
cd gcc-${GCC_VERSION}
./contrib/download_prerequisites

