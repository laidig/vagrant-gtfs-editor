wget -nc --quiet --progress=bar:force https://downloads.typesafe.com/play/1.2.6.2/play-1.2.6.2.zip
unzip -uo play-1.2.6.2.zip

wget -O master.zip --quiet --progress=bar:force https://github.com/laidig/gtfs-editor/archive/master.zip
unzip -uo master.zip

ls -hal

cd gtfs-editor-master
mkdir -p public/data/
cp conf/application.conf.template conf/application.conf

../play-1.2.6.2/play dependencies
