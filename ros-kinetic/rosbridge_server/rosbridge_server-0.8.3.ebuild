# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A WebSocket interface to rosbridge."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/rosbridge_server/0.8.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rosapi
	ros-kinetic/rosauth
	ros-kinetic/rosbridge_library
	ros-kinetic/rospy
	dev-python/twisted-core
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
