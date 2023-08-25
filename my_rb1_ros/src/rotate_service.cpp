#include "geometry_msgs/Twist.h"
#include "my_rb1_ros/Rotate.h"
#include "nav_msgs/Odometry.h"
#include "ros/init.h"
#include "ros/node_handle.h"
#include "ros/publisher.h"
#include "ros/rate.h"
#include "ros/ros.h"
#include "ros/service_server.h"
#include "ros/subscriber.h"
#include "tf2/LinearMath/Matrix3x3.h"
#include <tf2/LinearMath/Quaternion.h>
#include <unistd.h>
using namespace std;

class RotateRobot {
private:
  ros::NodeHandle nh;
  ros::Publisher vel_pub;
  ros::Subscriber pos_sub;
  ros::ServiceServer custom_srv;
  geometry_msgs::Twist vel;

  float currentDeg;
  float desiredDeg;
  float errorDeg;

public:
  RotateRobot() {

    vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 100);
    pos_sub = nh.subscribe<nav_msgs::Odometry>(
        "/odom", 10, &RotateRobot::odom_callback, this);

    vel.angular.z = 0;
    vel_pub.publish(vel);

    currentDeg = 0.0;
    desiredDeg = 0.0;
    errorDeg = 0.4;
    usleep(5000);
    ROS_INFO("Initialized Robot...");
  }

  ~RotateRobot() {}

  void my_service() {

    custom_srv = nh.advertiseService("/rotate_robot",
                                     &RotateRobot::rotate_callback, this);
  }
  bool rotate_callback(my_rb1_ros::Rotate::Request &req,
                       my_rb1_ros::Rotate::Response &res)

  {
    res.result = false;
    this->desiredDeg = req.degrees;
    // ROS_INFO("Request Desired Degree ==> rotate: %f degree",
    // this->desiredDeg); ROS_INFO("Current Degree: %f degree",
    // this->currentDeg);
    while (!res.result) {

      if (this->desiredDeg > this->currentDeg &&
          abs(this->desiredDeg - this->currentDeg) >= errorDeg) {

        ROS_INFO("Rotating CCW... Current Degree is: %f", this->currentDeg);
        vel.angular.z = 0.5; // rotate z axis rate 0.2 rad/second
        vel_pub.publish(vel);

      } else if (this->desiredDeg < this->currentDeg &&
                 abs(this->desiredDeg - this->currentDeg) >= errorDeg) {

        ROS_INFO("Rotating CW... Current Degree is: %f", this->currentDeg);
        vel.angular.z = -0.5; // rotate z axis rate 0.2 rad/second
        vel_pub.publish(vel);
      } else {

        // current - desired
        res.result = true;
      }
      // res.result = false;
      ros::spinOnce();
    }
    ROS_INFO("Target Reached at: %f", currentDeg);
    vel.angular.z = 0.0;
    vel_pub.publish(vel);
    // res.result = true;

    return res.result;
  }

  void odom_callback(const nav_msgs::OdometryConstPtr &msg) {

    tf2::Quaternion quaternion(
        msg->pose.pose.orientation.x, msg->pose.pose.orientation.y,
        msg->pose.pose.orientation.z, msg->pose.pose.orientation.w);

    // convert quartenion to radian
    tf2::Matrix3x3 mat(quaternion);
    double r, p, y;
    mat.getRPY(r, p, y);
    // ROS_INFO("Yaw: %f rad", y);

    // convert radian to degree
    this->currentDeg = (180.0 / M_PI) * y;
    /*
    if (abs(currentDeg) <= abs(desiredDeg)) {
      if (desiredDeg > 0) {

        ROS_INFO("Rotating CCW...");
        vel.angular.z = 0.2; // rotate z axis rate 0.2 rad/second
        vel_pub.publish(vel);

      } else if (desiredDeg < 0) {

        ROS_INFO("Rotating CW...");
        vel.angular.z = -0.2; // rotate z axis rate 0.2 rad/second
        vel_pub.publish(vel);
      }

    } else {
      ROS_INFO("Target Reached at: %f", desiredDeg);
      vel.angular.z = 0.0;
      vel_pub.publish(vel);
      targetReached = true;
    }
    */
    // ROS_INFO("Current Degree: %f", currentDeg);
    ros::spinOnce();
    // rate.sleep();
  }

  void get_curr_deg() const {

    ROS_INFO("Current Deg(in main): %f", this->currentDeg);
  }
};

int main(int argc, char **argv) {
  ros::init(argc, argv, "rotate_rb1_server");

  RotateRobot rb1;
  rb1.my_service();
  ros::spin();

  return 0;
}