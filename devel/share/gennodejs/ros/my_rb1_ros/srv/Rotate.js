// Auto-generated. Do not edit!

// (in-package my_rb1_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RotateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.degrees = null;
    }
    else {
      if (initObj.hasOwnProperty('degrees')) {
        this.degrees = initObj.degrees
      }
      else {
        this.degrees = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RotateRequest
    // Serialize message field [degrees]
    bufferOffset = _serializer.float32(obj.degrees, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RotateRequest
    let len;
    let data = new RotateRequest(null);
    // Deserialize message field [degrees]
    data.degrees = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_rb1_ros/RotateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '654c0db817894750a91ee5c6b8165960';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 degrees #request rotation(degree) by users
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RotateRequest(null);
    if (msg.degrees !== undefined) {
      resolved.degrees = msg.degrees;
    }
    else {
      resolved.degrees = 0.0
    }

    return resolved;
    }
};

class RotateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RotateResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RotateResponse
    let len;
    let data = new RotateResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_rb1_ros/RotateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result #response to client if rotation is successful
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RotateResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: RotateRequest,
  Response: RotateResponse,
  md5sum() { return '0643b709f08e1632b29259c672148c3b'; },
  datatype() { return 'my_rb1_ros/Rotate'; }
};
