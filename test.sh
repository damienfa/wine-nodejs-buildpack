ARRAY=(
   "Machin edj de mdl kd"
   "zlkejd zelkjd zelkjdez"
   "lkezjdl ze , zedjhz "
)

for i in "${ARRAY[@]}"
do
   echo $i
done


apt-get update
apt-get install -y --reinstall software-properties-common
add-apt-repository -y ppa:wine/wine-builds
apt-get install -y --install-recommends wine
