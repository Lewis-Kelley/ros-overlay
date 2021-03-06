# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This is a C library for interfacing with Segways RMP line of robotic platform"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/segwayrmp/libsegwayrmp-release/archive/release/indigo/libsegwayrmp/0.2.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	ros-indigo/serial
	dev-libs/boost
	dev-qt/qtcore:4
	media-libs/libsdl
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-qt/qtcore:4
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

