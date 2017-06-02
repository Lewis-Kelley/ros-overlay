# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="OpenCV 3.x"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/opencv3-release/archive/release/lunar/opencv3/3.2.0-6.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm arm64"

RDEPEND="
    ros-lunar/catkin
    sci-libs/vtk
    virtual/ffmpeg
    dev-lang/python
    sys-libs/zlib
    dev-libs/protobuf
    media-libs/libjpeg-turbo
    media-libs/libpng
    media-libs/libwebp
    dev-python/numpy
"
DEPEND="${RDEPEND}
    media-libs/libv4l
    dev-libs/protobuf
    media-libs/tiff
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}