# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The package cob_generic_can provides an interface for nodes on a can-bus and exa"
HOMEPAGE="http://ros.org/wiki/cob_generic_can"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/indigo/cob_generic_can/0.6.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_utilities
	ros-indigo/libntcan
	ros-indigo/libpcan
	ros-indigo/socketcan_interface
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

