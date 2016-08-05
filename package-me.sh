ARRAY=(
"/usr/share/doc/wine*"
"/usr/share/wine"
"/usr/share/wine/wineserver-restart-required.update-notifier"
"/usr/share/wine/wine.inf"
"/usr/bin/wine*"
"/usr/share/wine*"
"/usr/share/lintian/overrides/wine1.6"
"/usr/share/binfmts/wine"
"/usr/lib/x86_64-linux-gnu/wine"
"/usr/lib/mime/packages/wine1.6"
"/usr/lib/i386-linux-gnu/wine/"
"/var/lib/dpkg/info/wine*"
"/var/lib/binfmts"
)

for PACKAGE in "${ARRAY[@]}"; do
   PAPA="$(dirname "$PACKAGE")"
   mkdir -p "/wine-package/$PAPA"
   if [ -d $PACKAGE ]
   then
      cp -r $PACKAGE "/wine-package/$PAPA"
   else
      cp $PACKAGE "/wine-package/$PAPA"
   fi
done


rm -rf /wine-package
mkdir -p /wine-package/usr/share/doc
mkdir -p /wine-package/usr/share/wine
mkdir -p /wine-package/usr/bin
mkdir -p /wine-package/usr/share
mkdir -p /wine-package/usr/lib/x86_64-linux-gnu/wine
mkdir -p /wine-package/usr/lib/mime/packages
mkdir -p /wine-package/usr/lib/i386-linux-gnu/wine
mkdir -p /wine-package/var/lib/dpkg/info
mkdir -p /wine-package/var/lib/binfmts/wine
cp -r /usr/share/doc/wine* /wine-package/usr/share/doc
cp -r /usr/share/wine /wine-package/usr/share
cp -r /usr/share/wine/wineserver-restart-required.update-notifier /wine-package/usr/share/wine
cp -r /usr/share/wine/wine.inf /wine-package/usr/share/wine
cp -r /usr/bin/wine* /wine-package/usr/bin
cp -r /usr/share/wine* /wine-package/usr/share
cp -r /usr/share/lintian/overrides/wine1.6 /wine-package/usr/share/lintian/overrides
cp -r /usr/share/binfmts/wine /wine-package/usr/share/binfmts
cp -r /usr/lib/x86_64-linux-gnu/wine /wine-package/usr/lib/x86_64-linux-gnu
cp -r /usr/lib/mime/packages/wine1.6 /wine-package/usr/lib/mime/packages
cp -r /usr/lib/i386-linux-gnu/wine /wine-package/usr/lib/i386-linux-gnu
cp -r /var/lib/dpkg/info/wine* /wine-package/var/lib/dpkg/info
cp /var/lib/binfmts/wine /wine-package/var/lib/binfmts/wine
