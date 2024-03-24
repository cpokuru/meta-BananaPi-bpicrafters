# meta-BananaPi
For Bananapi r3 specific changes.

#Build instructions for BPIR3
$ mkdir <workspace dir>
$ cd <workspace dir>

$ repo init -u https://code.rdkcentral.com/r/rdkcmf/manifests -m rdkb-extsrc.xml -b hackathon2024/BPICRAFTERS
$ Include mentioned cl into manifest "https://code.rdkcentral.com/r/c/rdkcmf/manifests/+/100270".
$ repo sync -j4 --no-clone-bundle
$ MACHINE=filogic830 source meta-BananaPi/setup-environment
$ bitbake rdk-generic-broadband-image
