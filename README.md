OneColor for OnePlus Widget
==

This is a patched version of the [OnePlus Widget](https://www.apkmirror.com/apk/oneplus-ltd/oneplus-widget/) that removes the red accent color for the "1" digit:

![](https://i.imgur.com/8TklnYz.png)

Installing
==

You can download an APK from the [releases](https://github.com/yunyu/onecolor-oneplus-widget/releases) section, or create one yourself. You will need to first uninstall the original OnePlus widget (as changing the package name breaks automatic weather updates), and ignore future updates in the Play Store if OnePlus ever adds the widget there.

Patching
==

Obtain a copy of the latest OnePlus Widget APK, and copy it to `bin/net.oneplus.widget.apk`. After that, run `./patcher.sh`. The patched and re-signed APK will be in `out/`.

You will need to have an existing keystore and a JDK 8 installation. The script uses [Apktool](https://github.com/iBotPeaches/Apktool) and [Uber Apk Signer](https://github.com/patrickfav/uber-apk-signer) to apply the patches.