# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Metapackage for the ROS Packages for the JACO Arm Developed at WPI"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/wpi_jaco-release/archive/release/indigo/wpi_jaco/0.0.25-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/jaco_description
	ros-indigo/jaco_interaction
	ros-indigo/jaco_moveit_config
	ros-indigo/jaco_sdk
	ros-indigo/jaco_teleop
	ros-indigo/mico_description
	ros-indigo/mico_moveit_config
	ros-indigo/wpi_jaco_msgs
	ros-indigo/wpi_jaco_wrapper
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

