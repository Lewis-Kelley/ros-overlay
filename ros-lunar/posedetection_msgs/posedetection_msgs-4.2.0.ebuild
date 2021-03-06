# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="posedetection_msgs provides messages and services to facilitate passing pose det"
HOMEPAGE="http://ros.org/wiki/posedetection_msgs"
SRC_URI="https://github.com/tork-a/jsk_common_msgs-release/archive/release/lunar/posedetection_msgs/4.2.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/geometry_msgs
	ros-lunar/message_filters
	ros-lunar/message_runtime
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

