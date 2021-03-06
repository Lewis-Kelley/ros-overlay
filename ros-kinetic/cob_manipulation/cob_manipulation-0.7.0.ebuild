# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The cob_manipulation stack includes packages that provide manipulation capabilit"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_manipulation/0.7.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_collision_monitor
	ros-kinetic/cob_grasp_generation
	ros-kinetic/cob_lookat_action
	ros-kinetic/cob_moveit_bringup
	ros-kinetic/cob_moveit_interface
	ros-kinetic/cob_obstacle_distance_moveit
	ros-kinetic/cob_pick_place_action
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

