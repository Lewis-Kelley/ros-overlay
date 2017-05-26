# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/perception_pcl-release/archive/release/lunar/pcl_ros/1.5.3-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/sensor_msgs
    ros-lunar/rosbag
    ros-lunar/nodelet_topic_tools
    ros-lunar/dynamic_reconfigure
    ros-lunar/pcl_msgs
    ros-lunar/tf2_eigen
    ros-lunar/tf
    ros-lunar/nodelet
    ros-lunar/roscpp
    ros-lunar/pcl_conversions
    ros-lunar/std_msgs
    ros-lunar/pluginlib
    ros-lunar/message_filters
    sci-libs/proj
    dev-qt/qtcore
    sci-libs/pcl
    dev-cpp/eigen
    sci-libs/vtk
"
DEPEND="${RDEPEND}
    ros-lunar/roslib
    ros-lunar/rosconsole
    ros-lunar/cmake_modules
    ros-lunar/genmsg
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
