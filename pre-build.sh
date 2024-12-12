cd rt-n56u
wget https://raw.githubusercontent.com/mitchamador/rt-n56u/master/rt-n56u-mt7621_cpufreq.sh
wget https://raw.githubusercontent.com/mitchamador/rt-n56u/master/rt-n56u-mt7621_set_cpufreq.sh
chmod +x rt-n56u-mt7621_cpufreq.sh
chmod +x rt-n56u-mt7621_set_cpufreq.sh
sh rt-n56u-mt7621_cpufreq.sh
sh rt-n56u-mt7621_set_cpufreq.sh 1100

cd rt-n56u
#для установки частоты в ядре
wget -q https://raw.githubusercontent.com/mitchamador/rt-n56u/master/rt-n56u-mt7621_set_cpufreq.sh -O - | bash -s -- 1100
#для установки частоты после загрузки через выполнение команды m7621_cpufreq xxx (если нет планов ставить частоты, отличные от тех, что прописаны в ядре, можно и не делать)
wget -q https://raw.githubusercontent.com/mitchamador/rt-n56u/master/rt-n56u-mt7621_cpufreq.sh -O - | bash 

./start.sh

cd /opt/rt-n56u
wget -q https://raw.githubusercontent.com/mitchamador/rt-n56u/master/rt-n56u-mt7621_set_cpufreq.sh -O - | sudo bash -s -- 1100

cd /opt/rt-n56u/toolchain-mipsel
./clean_sources
./build_toolchain

cd /opt/rt-n56u/trunk
./clear_tree
./build_firmware
