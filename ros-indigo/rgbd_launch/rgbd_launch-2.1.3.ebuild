# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Launch files to open an RGBD device and load all nodelets to	  convert raw d"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rgbd_launch-release/archive/release/indigo/rgbd_launch/2.1.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/depth_image_proc
	ros-indigo/image_proc
	ros-indigo/nodelet
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

