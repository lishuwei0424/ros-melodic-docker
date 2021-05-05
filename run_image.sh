docker run  -it --rm \
           -v  /home/lishuwei/catkin_ws/src/LOAM_NOTED-master/src/:/root/catkin_ws/src/ \
           -w  /root/catkin_ws/src  \
           -p  5900:5900  \
           -p  6800:80 \
           loam:melodic  

           