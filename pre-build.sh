        cp build.config padavan-ng/trunk/.config
        pushd padavan-ng/trunk
        wget https://raw.githubusercontent.com/mitchamador/rt-n56u/master/rt-n56u-mt7621_cpufreq.sh
        wget https://raw.githubusercontent.com/mitchamador/rt-n56u/master/rt-n56u-mt7621_set_cpufreq.sh
        chmod +x rt-n56u-mt7621_cpufreq.sh
        chmod +x rt-n56u-mt7621_set_cpufreq.sh
        sh rt-n56u-mt7621_cpufreq.sh
        sh rt-n56u-mt7621_set_cpufreq.sh 1100
        ./clear_tree.sh
        ./build_firmware.sh
