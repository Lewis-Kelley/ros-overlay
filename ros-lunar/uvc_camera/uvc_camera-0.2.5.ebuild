# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A collection of node(let)s that stream images from USB cameras (UVC)
	 and pr"
HOMEPAGE="http://ros.org/wiki/uvc_camera"
SRC_URI="https://github.com/ros-drivers-gbp/camera_umd-release/archive/release/lunar/uvc_camera/0.2.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/camera_info_manager
	ros-lunar/image_transport
	ros-lunar/nodelet
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	media-libs/libv4l
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

