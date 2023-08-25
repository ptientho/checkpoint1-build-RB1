# checkpoint1-build-RB1

## Introduction
<ol>
<li>Created RB-1 robot model using URDF format and visualized in RVIZ</li>
<li>Simulated RB-1 robot in Gazebo and tested sending velocity commands</li>
<li>Created ROS service for controlling the robot rotation</li> 
</ol>

## Visualize the robot in Rviz
<p>To display the robot model in Rviz, run the following command.</p>

roslaunch my_rb1_description display.launch

![robot_model](https://drive.google.com/file/d/10lSa7YhJmSPME0UlGeTZdTXTbL13pbJP/view?usp=drive_link)

2.Robot launch in Gazebo:
	roslaunch my_rb1_gazebo my_rb1_robot_warehouse.launch

3.Control rotation via ROS service:
	server: roslaunch my_rb1_ros rotate_service.launch
	client: rosservice call /rotate_robot "degrees: -90"

