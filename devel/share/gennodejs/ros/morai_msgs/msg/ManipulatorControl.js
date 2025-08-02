// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ManipulatorControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ControlType = null;
      this.x1 = null;
      this.x2 = null;
      this.x3 = null;
      this.x4 = null;
      this.x5 = null;
      this.x6 = null;
      this.GripperStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('ControlType')) {
        this.ControlType = initObj.ControlType
      }
      else {
        this.ControlType = 0;
      }
      if (initObj.hasOwnProperty('x1')) {
        this.x1 = initObj.x1
      }
      else {
        this.x1 = 0.0;
      }
      if (initObj.hasOwnProperty('x2')) {
        this.x2 = initObj.x2
      }
      else {
        this.x2 = 0.0;
      }
      if (initObj.hasOwnProperty('x3')) {
        this.x3 = initObj.x3
      }
      else {
        this.x3 = 0.0;
      }
      if (initObj.hasOwnProperty('x4')) {
        this.x4 = initObj.x4
      }
      else {
        this.x4 = 0.0;
      }
      if (initObj.hasOwnProperty('x5')) {
        this.x5 = initObj.x5
      }
      else {
        this.x5 = 0.0;
      }
      if (initObj.hasOwnProperty('x6')) {
        this.x6 = initObj.x6
      }
      else {
        this.x6 = 0.0;
      }
      if (initObj.hasOwnProperty('GripperStatus')) {
        this.GripperStatus = initObj.GripperStatus
      }
      else {
        this.GripperStatus = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManipulatorControl
    // Serialize message field [ControlType]
    bufferOffset = _serializer.int32(obj.ControlType, buffer, bufferOffset);
    // Serialize message field [x1]
    bufferOffset = _serializer.float32(obj.x1, buffer, bufferOffset);
    // Serialize message field [x2]
    bufferOffset = _serializer.float32(obj.x2, buffer, bufferOffset);
    // Serialize message field [x3]
    bufferOffset = _serializer.float32(obj.x3, buffer, bufferOffset);
    // Serialize message field [x4]
    bufferOffset = _serializer.float32(obj.x4, buffer, bufferOffset);
    // Serialize message field [x5]
    bufferOffset = _serializer.float32(obj.x5, buffer, bufferOffset);
    // Serialize message field [x6]
    bufferOffset = _serializer.float32(obj.x6, buffer, bufferOffset);
    // Serialize message field [GripperStatus]
    bufferOffset = _serializer.bool(obj.GripperStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManipulatorControl
    let len;
    let data = new ManipulatorControl(null);
    // Deserialize message field [ControlType]
    data.ControlType = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x1]
    data.x1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x2]
    data.x2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x3]
    data.x3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x4]
    data.x4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x5]
    data.x5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x6]
    data.x6 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GripperStatus]
    data.GripperStatus = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/ManipulatorControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2949cc268ce29a2b5dafef91eaf5bd1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ControlType
    float32 x1
    float32 x2
    float32 x3
    float32 x4
    float32 x5
    float32 x6
    bool GripperStatus
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManipulatorControl(null);
    if (msg.ControlType !== undefined) {
      resolved.ControlType = msg.ControlType;
    }
    else {
      resolved.ControlType = 0
    }

    if (msg.x1 !== undefined) {
      resolved.x1 = msg.x1;
    }
    else {
      resolved.x1 = 0.0
    }

    if (msg.x2 !== undefined) {
      resolved.x2 = msg.x2;
    }
    else {
      resolved.x2 = 0.0
    }

    if (msg.x3 !== undefined) {
      resolved.x3 = msg.x3;
    }
    else {
      resolved.x3 = 0.0
    }

    if (msg.x4 !== undefined) {
      resolved.x4 = msg.x4;
    }
    else {
      resolved.x4 = 0.0
    }

    if (msg.x5 !== undefined) {
      resolved.x5 = msg.x5;
    }
    else {
      resolved.x5 = 0.0
    }

    if (msg.x6 !== undefined) {
      resolved.x6 = msg.x6;
    }
    else {
      resolved.x6 = 0.0
    }

    if (msg.GripperStatus !== undefined) {
      resolved.GripperStatus = msg.GripperStatus;
    }
    else {
      resolved.GripperStatus = false
    }

    return resolved;
    }
};

module.exports = ManipulatorControl;
