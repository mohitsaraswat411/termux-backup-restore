while true; do
    read -p " Do you want to backup your termux files and folder if yes press y  (y/n) " yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

cd
cd ..
cp ./usr/bin/busybox ./tar
tar -zcvf /sdcard/termux-backup.tar.gz home usr
clear
cd
