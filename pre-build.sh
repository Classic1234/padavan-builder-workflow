wget -q https://raw.githubusercontent.com/mitchamador/rt-n56u/master/rt-n56u-mt7621_set_cpufreq.sh -O - | bash -s -- 1100
wget -q https://raw.githubusercontent.com/mitchamador/rt-n56u/master/rt-n56u-mt7621_cpufreq.sh -O - | bash
./clear_tree.sh
./build_firmware.sh
