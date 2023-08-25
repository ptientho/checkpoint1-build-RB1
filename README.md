# checkpoint1-build-RB1

## Introductionn
<ol>
<li>Created RB-1 robot model using URDF format and visualized in RVIZ</li>
<li>Simulated RB-1 robot in Gazebo and tested sending velocity commands</li>
<li>Created ROS service for controlling the robot rotation</li> 
</ol>

## Run code
	roslaunch my_rb1_description display.launch

2.Robot launch in Gazebo:
	roslaunch my_rb1_gazebo my_rb1_robot_warehouse.launch

3.Control rotation via ROS service:
	server: roslaunch my_rb1_ros rotate_service.launch
	client: rosservice call /rotate_robot "degrees: -90"

