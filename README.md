# checkpoint1-build-RB1

# How to run simulation
1.Robot model in RVIZ: 
	roslaunch my_rb1_description display.launch

2.Robot launch in Gazebo:
	roslaunch my_rb1_gazebo my_rb1_robot_warehouse.launch

3.Control rotation via ROS service:
	server: roslaunch my_rb1_ros rotate_service.launch
	client: rosservice call /rotate_robot "degrees: -90"

