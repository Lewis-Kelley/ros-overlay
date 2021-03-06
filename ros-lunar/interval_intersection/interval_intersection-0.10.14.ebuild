# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Tools for calculating the intersection of interval messages coming
	in on sev"
HOMEPAGE="http://www.ros.org/wiki/interval_intersection"
SRC_URI="https://github.com/ros-gbp/calibration-release/archive/release/lunar/interval_intersection/0.10.14-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/actionlib_msgs
	ros-lunar/calibration_msgs
	ros-lunar/geometry_msgs
	ros-lunar/rosconsole
	ros-lunar/roscpp
	ros-lunar/roscpp_serialization
	ros-lunar/rostime
	ros-lunar/std_msgs
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

