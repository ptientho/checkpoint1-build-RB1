# checkpoint1-build-RB1

## Introduction
<ol>
<li>Created RB-1 robot model using URDF format and visualized in Rviz</li>
<li>Simulated RB-1 robot in Gazebo and tested sending velocity commands</li>
<li>Created ROS service for controlling the robot rotation</li> 
</ol>

## Visualize the robot in Rviz
<p>To display the robot model in Rviz, run the following command.</p>

roslaunch my_rb1_description display.launch

<strong>Result:</strong><br>
<img width="767" alt="Screen Shot 2023-08-25 at 12 04 14 AM" src="https://github.com/ptientho/checkpoint1-build-RB1/assets/78469954/eb29ee0d-2526-43a5-a9a2-90ea95f52e3a">

## Visualize the robot in Gazebo
<p>Run the following command to launch the robot in Gazebo world. Gazebo is useful for testing the robot's interaction with the simulated world.</p>

roslaunch my_rb1_gazebo my_rb1_robot_warehouse.launch

[![Watch the video](https://example.com/video-thumbnail.jpg)]([https://example.com/video.mp4](https://drive.google.com/file/d/1gh7rEznzsDAF8vFMI7fPV8oyvNZj7GOh/view?usp=drive_link))

3.Control rotation via ROS service:
	server: roslaunch my_rb1_ros rotate_service.launch
	client: rosservice call /rotate_robot "degrees: -90"

