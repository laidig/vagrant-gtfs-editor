wget -q -nc https://downloads.typesafe.com/play/1.2.6.2/play-1.2.6.2.zip
unzip -q -u play-1.2.6.2.zip

GIT_TRACE=2 git clone https://github.com/conveyal/gtfs-editor.git

cd gtfs-editor
mkdir public/data/
cp conf/application.conf.template conf/application.conf

../play-1.2.6.2/play dependencies
