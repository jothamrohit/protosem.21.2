// Generated by gencpp from file obs_service/service_exampleResponse.msg
// DO NOT EDIT!


#ifndef OBS_SERVICE_MESSAGE_SERVICE_EXAMPLERESPONSE_H
#define OBS_SERVICE_MESSAGE_SERVICE_EXAMPLERESPONSE_H


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
struct service_exampleResponse_
{
  typedef service_exampleResponse_<ContainerAllocator> Type;

  service_exampleResponse_()
    : go()  {
    }
  service_exampleResponse_(const ContainerAllocator& _alloc)
    : go(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _go_type;
  _go_type go;





  typedef boost::shared_ptr< ::obs_service::service_exampleResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::obs_service::service_exampleResponse_<ContainerAllocator> const> ConstPtr;

}; // struct service_exampleResponse_

typedef ::obs_service::service_exampleResponse_<std::allocator<void> > service_exampleResponse;

typedef boost::shared_ptr< ::obs_service::service_exampleResponse > service_exampleResponsePtr;
typedef boost::shared_ptr< ::obs_service::service_exampleResponse const> service_exampleResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::obs_service::service_exampleResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::obs_service::service_exampleResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::obs_service::service_exampleResponse_<ContainerAllocator1> & lhs, const ::obs_service::service_exampleResponse_<ContainerAllocator2> & rhs)
{
  return lhs.go == rhs.go;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::obs_service::service_exampleResponse_<ContainerAllocator1> & lhs, const ::obs_service::service_exampleResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace obs_service

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::obs_service::service_exampleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::obs_service::service_exampleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::obs_service::service_exampleResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::obs_service::service_exampleResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::obs_service::service_exampleResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::obs_service::service_exampleResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::obs_service::service_exampleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dd386a08156e29736b874efbfa04ba8f";
  }

  static const char* value(const ::obs_service::service_exampleResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdd386a08156e2973ULL;
  static const uint64_t static_value2 = 0x6b874efbfa04ba8fULL;
};

template<class ContainerAllocator>
struct DataType< ::obs_service::service_exampleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "obs_service/service_exampleResponse";
  }

  static const char* value(const ::obs_service::service_exampleResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::obs_service::service_exampleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"string go\n"
"\n"
;
  }

  static const char* value(const ::obs_service::service_exampleResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::obs_service::service_exampleResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.go);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct service_exampleResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::obs_service::service_exampleResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::obs_service::service_exampleResponse_<ContainerAllocator>& v)
  {
    s << indent << "go: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.go);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBS_SERVICE_MESSAGE_SERVICE_EXAMPLERESPONSE_H