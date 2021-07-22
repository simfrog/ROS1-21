// Generated by gencpp from file my_publisher/my_msg.msg
// DO NOT EDIT!


#ifndef MY_PUBLISHER_MESSAGE_MY_MSG_H
#define MY_PUBLISHER_MESSAGE_MY_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float32.h>
#include <std_msgs/String.h>

namespace my_publisher
{
template <class ContainerAllocator>
struct my_msg_
{
  typedef my_msg_<ContainerAllocator> Type;

  my_msg_()
    : float_data()
    , string_data()  {
    }
  my_msg_(const ContainerAllocator& _alloc)
    : float_data(_alloc)
    , string_data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float32_<ContainerAllocator>  _float_data_type;
  _float_data_type float_data;

   typedef  ::std_msgs::String_<ContainerAllocator>  _string_data_type;
  _string_data_type string_data;





  typedef boost::shared_ptr< ::my_publisher::my_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_publisher::my_msg_<ContainerAllocator> const> ConstPtr;

}; // struct my_msg_

typedef ::my_publisher::my_msg_<std::allocator<void> > my_msg;

typedef boost::shared_ptr< ::my_publisher::my_msg > my_msgPtr;
typedef boost::shared_ptr< ::my_publisher::my_msg const> my_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_publisher::my_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_publisher::my_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_publisher::my_msg_<ContainerAllocator1> & lhs, const ::my_publisher::my_msg_<ContainerAllocator2> & rhs)
{
  return lhs.float_data == rhs.float_data &&
    lhs.string_data == rhs.string_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_publisher::my_msg_<ContainerAllocator1> & lhs, const ::my_publisher::my_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_publisher

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::my_publisher::my_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_publisher::my_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_publisher::my_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_publisher::my_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_publisher::my_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_publisher::my_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_publisher::my_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "82455cb8167941750708f765e66e4c5e";
  }

  static const char* value(const ::my_publisher::my_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x82455cb816794175ULL;
  static const uint64_t static_value2 = 0x0708f765e66e4c5eULL;
};

template<class ContainerAllocator>
struct DataType< ::my_publisher::my_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_publisher/my_msg";
  }

  static const char* value(const ::my_publisher::my_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_publisher::my_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float32 float_data\n"
"std_msgs/String string_data\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
;
  }

  static const char* value(const ::my_publisher::my_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_publisher::my_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.float_data);
      stream.next(m.string_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct my_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_publisher::my_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_publisher::my_msg_<ContainerAllocator>& v)
  {
    s << indent << "float_data: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.float_data);
    s << indent << "string_data: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.string_data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_PUBLISHER_MESSAGE_MY_MSG_H
