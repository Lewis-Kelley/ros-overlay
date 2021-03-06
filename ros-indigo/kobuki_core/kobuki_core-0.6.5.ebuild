# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="NonROS software for Kobuki, Yujin Robots mobile research base"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki_core-release/archive/release/indigo/kobuki_core/0.6.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/kobuki_dock_drive
	ros-indigo/kobuki_driver
	ros-indigo/kobuki_ftdi
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

