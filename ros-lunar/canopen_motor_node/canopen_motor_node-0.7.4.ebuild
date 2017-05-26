# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package extends the canopen_chain_node with specialized handling for canopen_402 devices. It facilitates interface abstraction with ros_control."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/lunar/canopen_motor_node/0.7.4-0.tar.gz"

LICENSE="LGPLv3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/hardware_interface
    ros-lunar/controller_manager_msgs
    ros-lunar/canopen_chain_node
    ros-lunar/filters
    ros-lunar/canopen_402
    ros-lunar/joint_limits_interface
    ros-lunar/urdf
    ros-lunar/controller_manager
    dev-cpp/muParser
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

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
    cd ../../work
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
    rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}
