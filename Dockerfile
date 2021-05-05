FROM dorowu/ubuntu-desktop-lxde-vnc:bionic
WORKDIR /root

RUN  apt-get purge dirmngr -y  \
     && apt-get update  \
	 && apt-get install dirmngr -y

#ros-melodic-desktop-full
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' \
    && apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654  \
    && apt-get update \
	&& apt-get install -y ros-melodic-desktop-full \
	&& echo "source /opt/ros/melodic/setup.bash" >>/root/.bashrc \
	&& /bin/bash -c  "source /root/.bashrc" \
	#&& apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential \
	#&& rosdep init && rosdep update  \
    && apt-get autoclean -y \
	&& apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* 
      
RUN mkdir -p  ./catkin_ws/src 

#ENTRYPOINT ["/root/startup.sh"]  




