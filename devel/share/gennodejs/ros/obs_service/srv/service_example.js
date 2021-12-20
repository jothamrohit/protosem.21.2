// Auto-generated. Do not edit!

// (in-package obs_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class service_exampleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flag = null;
    }
    else {
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type service_exampleRequest
    // Serialize message field [flag]
    bufferOffset = _serializer.int32(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type service_exampleRequest
    let len;
    let data = new service_exampleRequest(null);
    // Deserialize message field [flag]
    data.flag = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'obs_service/service_exampleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa0dbc5596ec12974ea3a17a045b36e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 flag 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new service_exampleRequest(null);
    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    return resolved;
    }
};

class service_exampleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.go = null;
    }
    else {
      if (initObj.hasOwnProperty('go')) {
        this.go = initObj.go
      }
      else {
        this.go = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type service_exampleResponse
    // Serialize message field [go]
    bufferOffset = _serializer.string(obj.go, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type service_exampleResponse
    let len;
    let data = new service_exampleResponse(null);
    // Deserialize message field [go]
    data.go = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.go);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'obs_service/service_exampleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd386a08156e29736b874efbfa04ba8f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string go
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new service_exampleResponse(null);
    if (msg.go !== undefined) {
      resolved.go = msg.go;
    }
    else {
      resolved.go = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: service_exampleRequest,
  Response: service_exampleResponse,
  md5sum() { return '570658227795c638a4cd95466c1e01dc'; },
  datatype() { return 'obs_service/service_example'; }
};
