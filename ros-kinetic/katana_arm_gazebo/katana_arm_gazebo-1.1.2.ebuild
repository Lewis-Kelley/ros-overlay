# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/katana_arm_gazebo"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_arm_gazebo/1.1.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="GPL"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/actionlib
    ros-kinetic/controller_manager
    ros-kinetic/controller_manager_msgs
    ros-kinetic/gazebo_ros
    ros-kinetic/joint_trajectory_controller
    ros-kinetic/katana_description
    ros-kinetic/katana_gazebo_plugins
    ros-kinetic/robot_state_publisher
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/urdf
    ros-kinetic/xacro
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
