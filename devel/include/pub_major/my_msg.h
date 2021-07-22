// Generated by gencpp from file pub_major/my_msg.msg
// DO NOT EDIT!


#ifndef PUB_MAJOR_MESSAGE_MY_MSG_H
#define PUB_MAJOR_MESSAGE_MY_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/String.h>

namespace pub_major
{
template <class ContainerAllocator>
struct my_msg_
{
  typedef my_msg_<ContainerAllocator> Type;

  my_msg_()
    : string_data()  {
    }
  my_msg_(const ContainerAllocator& _alloc)
    : string_data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::String_<ContainerAllocator>  _string_data_type;
  _string_data_type string_data;





  typedef boost::shared_ptr< ::pub_major::my_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pub_major::my_msg_<ContainerAllocator> const> ConstPtr;

}; // struct my_msg_

typedef ::pub_major::my_msg_<std::allocator<void> > my_msg;

typedef boost::shared_ptr< ::pub_major::my_msg > my_msgPtr;
typedef boost::shared_ptr< ::pub_major::my_msg const> my_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pub_major::my_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pub_major::my_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pub_major::my_msg_<ContainerAllocator1> & lhs, const ::pub_major::my_msg_<ContainerAllocator2> & rhs)
{
  return lhs.string_data == rhs.string_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pub_major::my_msg_<ContainerAllocator1> & lhs, const ::pub_major::my_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pub_major

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pub_major::my_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pub_major::my_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pub_major::my_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pub_major::my_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pub_major::my_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pub_major::my_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pub_major::my_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a86d7fd17fd3fe87bbe0c3926ccecfd0";
  }

  static const char* value(const ::pub_major::my_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa86d7fd17fd3fe87ULL;
  static const uint64_t static_value2 = 0xbbe0c3926ccecfd0ULL;
};

template<class ContainerAllocator>
struct DataType< ::pub_major::my_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pub_major/my_msg";
  }

  static const char* value(const ::pub_major::my_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pub_major::my_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/String string_data\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
;
  }

  static const char* value(const ::pub_major::my_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pub_major::my_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
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
struct Printer< ::pub_major::my_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pub_major::my_msg_<ContainerAllocator>& v)
  {
    s << indent << "string_data: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.string_data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PUB_MAJOR_MESSAGE_MY_MSG_H