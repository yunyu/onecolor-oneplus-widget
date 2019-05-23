#!/bin/sh

rm -rf decomp out
mkdir decomp && cd decomp
echo "Decompiling"
java -jar ../bin/apktool.jar d ../bin/net.oneplus.widget.apk
cd net.oneplus.widget
echo "Patching"
find ./smali/net/oneplus/widget -type f -exec sed -i 's/\"1\"/\"\"/' {} \;
sed -i 's/android\:sharedUserId\=\"android.uid.system\"//' AndroidManifest.xml
# sed -i 's/android\:updatePeriodMillis\=\"0\"/android\:updatePeriodMillis\=\"1800000\"/' res/xml/weather_widget_provider.xml
# sed -i 's/package=\"net.oneplus.widget\"/package=\"net.oneplus.widget_onecolor\"/' AndroidManifest.xml
cp ../../preview.png ./res/drawable/
echo "Recompiling"
cd ..
java -jar ../bin/apktool.jar b ./net.oneplus.widget
echo "Re-signing"
java -jar ../bin/uber-apk-signer.jar --allowResign --apks ./net.oneplus.widget/dist -o ../out