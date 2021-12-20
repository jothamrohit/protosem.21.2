// Generated by gencpp from file obs_service/service_exampleRequest.msg
// DO NOT EDIT!


#ifndef OBS_SERVICE_MESSAGE_SERVICE_EXAMPLEREQUEST_H
#define OBS_SERVICE_MESSAGE_SERVICE_EXAMPLEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace obs_service
{
template <class ContainerAllocator>
struct service_exampleRequest_
{
  typedef service_exampleRequest_<ContainerAllocator> Type;

  service_exampleRequest_()
    : flag(0)  {
    }
  service_exampleRequest_(const ContainerAllocator& _alloc)
    : flag(0)  {
  (void)_alloc;
    }



   typedef int32_t _flag_type;
  _flag_type flag;





  typedef boost::shared_ptr< ::obs_service::service_exampleRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::obs_service::service_exampleRequest_<ContainerAllocator> const> ConstPtr;

}; // struct service_exampleRequest_

typedef ::obs_service::service_exampleRequest_<std::allocator<void> > service_exampleRequest;

typedef boost::shared_ptr< ::obs_service::service_exampleRequest > service_exampleRequestPtr;
typedef boost::shared_ptr< ::obs_service::service_exampleRequest const> service_exampleRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::obs_service::service_exampleRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::obs_service::service_exampleRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::obs_service::service_exampleRequest_<ContainerAllocator1> & lhs, const ::obs_service::service_exampleRequest_<ContainerAllocator2> & rhs)
{
  return lhs.flag == rhs.flag;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::obs_service::service_exampleRequest_<ContainerAllocator1> & lhs, const ::obs_service::service_exampleRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace obs_service

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::obs_service::service_exampleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::obs_service::service_exampleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::obs_service::service_exampleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::obs_service::service_exampleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::obs_service::service_exampleRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::obs_service::service_exampleRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::obs_service::service_exampleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aa0dbc5596ec12974ea3a17a045b36e0";
  }

  static const char* value(const ::obs_service::service_exampleRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaa0dbc5596ec1297ULL;
  static const uint64_t static_value2 = 0x4ea3a17a045b36e0ULL;
};

template<class ContainerAllocator>
struct DataType< ::obs_service::service_exampleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "obs_service/service_exampleRequest";
  }

  static const char* value(const ::obs_service::service_exampleRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::obs_service::service_exampleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 flag \n"
"\n"
;
  }

  static const char* value(const ::obs_service::service_exampleRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::obs_service::service_exampleRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.flag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct service_exampleRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::obs_service::service_exampleRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::obs_service::service_exampleRequest_<ContainerAllocator>& v)
  {
    s << indent << "flag: ";
    Printer<int32_t>::stream(s, indent + "  ", v.flag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBS_SERVICE_MESSAGE_SERVICE_EXAMPLEREQUEST_H
