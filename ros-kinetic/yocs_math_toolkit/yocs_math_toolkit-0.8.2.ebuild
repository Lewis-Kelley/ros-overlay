# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Math toolkit for Yujin open control system. This package is intended to contain common use functions,
    mostly for simple mathematics but also for tf-related conversions.
    By no means it pretends to be an efficient and robust, widely used math library, but a play ground where
    to put common code that is typically repeated in many robot control programs."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_math_toolkit/0.8.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/ecl_exceptions
    ros-kinetic/roscpp
    ros-kinetic/ecl_config
    ros-kinetic/ecl_build
    ros-kinetic/ecl_formatters
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/ecl_linear_algebra
"
DEPEND="
    ros-kinetic/ecl_exceptions
    ros-kinetic/roscpp
    ros-kinetic/ecl_config
    ros-kinetic/ecl_build
    ros-kinetic/ecl_formatters
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/ecl_linear_algebra
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}