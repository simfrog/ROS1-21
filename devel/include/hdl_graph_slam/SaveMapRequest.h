// Generated by gencpp from file hdl_graph_slam/SaveMapRequest.msg
// DO NOT EDIT!


#ifndef HDL_GRAPH_SLAM_MESSAGE_SAVEMAPREQUEST_H
#define HDL_GRAPH_SLAM_MESSAGE_SAVEMAPREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hdl_graph_slam
{
template <class ContainerAllocator>
struct SaveMapRequest_
{
  typedef SaveMapRequest_<ContainerAllocator> Type;

  SaveMapRequest_()
    : utm(false)
    , resolution(0.0)
    , destination()  {
    }
  SaveMapRequest_(const ContainerAllocator& _alloc)
    : utm(false)
    , resolution(0.0)
    , destination(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _utm_type;
  _utm_type utm;

   typedef float _resolution_type;
  _resolution_type resolution;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _destination_type;
  _destination_type destination;





  typedef boost::shared_ptr< ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SaveMapRequest_

typedef ::hdl_graph_slam::SaveMapRequest_<std::allocator<void> > SaveMapRequest;

typedef boost::shared_ptr< ::hdl_graph_slam::SaveMapRequest > SaveMapRequestPtr;
typedef boost::shared_ptr< ::hdl_graph_slam::SaveMapRequest const> SaveMapRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator1> & lhs, const ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator2> & rhs)
{
  return lhs.utm == rhs.utm &&
    lhs.resolution == rhs.resolution &&
    lhs.destination == rhs.destination;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator1> & lhs, const ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hdl_graph_slam

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0598a2e79dcb74a472e6ce625af8b824";
  }

  static const char* value(const ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0598a2e79dcb74a4ULL;
  static const uint64_t static_value2 = 0x72e6ce625af8b824ULL;
};

template<class ContainerAllocator>
struct DataType< ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hdl_graph_slam/SaveMapRequest";
  }

  static const char* value(const ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool utm\n"
"float32 resolution\n"
"string destination\n"
;
  }

  static const char* value(const ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.utm);
      stream.next(m.resolution);
      stream.next(m.destination);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SaveMapRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hdl_graph_slam::SaveMapRequest_<ContainerAllocator>& v)
  {
    s << indent << "utm: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.utm);
    s << indent << "resolution: ";
    Printer<float>::stream(s, indent + "  ", v.resolution);
    s << indent << "destination: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.destination);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HDL_GRAPH_SLAM_MESSAGE_SAVEMAPREQUEST_H
