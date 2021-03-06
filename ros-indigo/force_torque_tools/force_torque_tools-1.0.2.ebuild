# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Tools for gravity compensation and forcetorque sensor calibration"
HOMEPAGE="http://wiki.ros.org/force_torque_tools"
SRC_URI="https://github.com/ros-gbp/force_torque_tools-release/archive/release/indigo/force_torque_tools/1.0.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/force_torque_sensor_calib
	ros-indigo/gravity_compensation
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

