# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="tta#text"
HOMEPAGE="http://ros.org/wiki/rosmsg"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rosmsg/1.11.21-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	ros-indigo/genmsg
	ros-indigo/rosbag
	ros-indigo/roslib
	dev-python/rospkg
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

