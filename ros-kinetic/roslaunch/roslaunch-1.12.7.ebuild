# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="att#text"
HOMEPAGE="http://ros.org/wiki/roslaunch"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/roslaunch/1.12.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rosclean
	ros-kinetic/rosgraph_msgs
	ros-kinetic/roslib
	ros-kinetic/rosmaster
	ros-kinetic/rosout
	ros-kinetic/rosparam
	ros-kinetic/rosunit
	dev-python/paramiko
	dev-python/rospkg
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

