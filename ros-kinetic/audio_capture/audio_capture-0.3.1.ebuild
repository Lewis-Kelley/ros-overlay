# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Transports audio from a source to a destination Audio sources can come	  fr"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/audio_common-release/archive/release/kinetic/audio_capture/0.3.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/audio_common_msgs
	ros-kinetic/roscpp
	media-libs/gstreamer:1.0
	media-libs/gst-plugins-base:1.0
	media-libs/gst-plugins-good:1.0
	media-libs/gst-plugins-ugly:1.0
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	media-libs/gst-plugins-base:1.0
	media-libs/gstreamer:1.0
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

