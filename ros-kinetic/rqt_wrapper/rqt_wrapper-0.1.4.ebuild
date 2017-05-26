# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A wrapper for keeping rqt programs alive."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rqt_wrapper-release/archive/release/kinetic/rqt_wrapper/0.1.4-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rqt_reconfigure
    ros-kinetic/rqt_plot
    ros-kinetic/rosgraph
    ros-kinetic/rocon_console
    ros-kinetic/rqt_gui
    ros-kinetic/qt_gui_py_common
    ros-kinetic/rqt_gui_py
    ros-kinetic/python_qt_binding
    ros-kinetic/rocon_python_utils
    ros-kinetic/rqt_robot_monitor
"
DEPEND="
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}