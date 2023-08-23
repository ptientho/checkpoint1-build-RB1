// Generated by gencpp from file my_rb1_ros/RotateRequest.msg
// DO NOT EDIT!


#ifndef MY_RB1_ROS_MESSAGE_ROTATEREQUEST_H
#define MY_RB1_ROS_MESSAGE_ROTATEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_rb1_ros
{
template <class ContainerAllocator>
struct RotateRequest_
{
  typedef RotateRequest_<ContainerAllocator> Type;

  RotateRequest_()
    : degrees(0.0)  {
    }
  RotateRequest_(const ContainerAllocator& _alloc)
    : degrees(0.0)  {
  (void)_alloc;
    }



   typedef float _degrees_type;
  _degrees_type degrees;





  typedef boost::shared_ptr< ::my_rb1_ros::RotateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_rb1_ros::RotateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RotateRequest_

typedef ::my_rb1_ros::RotateRequest_<std::allocator<void> > RotateRequest;

typedef boost::shared_ptr< ::my_rb1_ros::RotateRequest > RotateRequestPtr;
typedef boost::shared_ptr< ::my_rb1_ros::RotateRequest const> RotateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_rb1_ros::RotateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_rb1_ros::RotateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_rb1_ros::RotateRequest_<ContainerAllocator1> & lhs, const ::my_rb1_ros::RotateRequest_<ContainerAllocator2> & rhs)
{
  return lhs.degrees == rhs.degrees;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_rb1_ros::RotateRequest_<ContainerAllocator1> & lhs, const ::my_rb1_ros::RotateRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_rb1_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_rb1_ros::RotateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_rb1_ros::RotateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_rb1_ros::RotateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_rb1_ros::RotateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_rb1_ros::RotateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_rb1_ros::RotateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_rb1_ros::RotateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "654c0db817894750a91ee5c6b8165960";
  }

  static const char* value(const ::my_rb1_ros::RotateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x654c0db817894750ULL;
  static const uint64_t static_value2 = 0xa91ee5c6b8165960ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_rb1_ros::RotateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_rb1_ros/RotateRequest";
  }

  static const char* value(const ::my_rb1_ros::RotateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_rb1_ros::RotateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 degrees #request rotation(degree) by users\n"
;
  }

  static const char* value(const ::my_rb1_ros::RotateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_rb1_ros::RotateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.degrees);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RotateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_rb1_ros::RotateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_rb1_ros::RotateRequest_<ContainerAllocator>& v)
  {
    s << indent << "degrees: ";
    Printer<float>::stream(s, indent + "  ", v.degrees);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_RB1_ROS_MESSAGE_ROTATEREQUEST_H
