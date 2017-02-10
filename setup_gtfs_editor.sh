wget -nc --progress dot:mega https://downloads.typesafe.com/play/1.2.6.2/play-1.2.6.2.zip
unzip -u play-1.2.6.2.zip

wget -O master.zip --progress dot:mega https://github.com/conveyal/gtfs-editor/archive/master.zip
unzip -u master.zip

ls -hal

cd gtfs-editor-master
mkdir public/data/
cp conf/application.conf.template conf/application.conf

../play-1.2.6.2/play dependencies
