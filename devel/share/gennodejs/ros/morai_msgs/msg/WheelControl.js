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

class WheelControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wheel_steering_angle = null;
      this.wheel_rpm = null;
    }
    else {
      if (initObj.hasOwnProperty('wheel_steering_angle')) {
        this.wheel_steering_angle = initObj.wheel_steering_angle
      }
      else {
        this.wheel_steering_angle = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('wheel_rpm')) {
        this.wheel_rpm = initObj.wheel_rpm
      }
      else {
        this.wheel_rpm = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelControl
    // Check that the constant length array field [wheel_steering_angle] has the right length
    if (obj.wheel_steering_angle.length !== 4) {
      throw new Error('Unable to serialize array field wheel_steering_angle - length must be 4')
    }
    // Serialize message field [wheel_steering_angle]
    bufferOffset = _arraySerializer.float32(obj.wheel_steering_angle, buffer, bufferOffset, 4);
    // Check that the constant length array field [wheel_rpm] has the right length
    if (obj.wheel_rpm.length !== 4) {
      throw new Error('Unable to serialize array field wheel_rpm - length must be 4')
    }
    // Serialize message field [wheel_rpm]
    bufferOffset = _arraySerializer.float32(obj.wheel_rpm, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelControl
    let len;
    let data = new WheelControl(null);
    // Deserialize message field [wheel_steering_angle]
    data.wheel_steering_angle = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [wheel_rpm]
    data.wheel_rpm = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/WheelControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7de35c959ef804c8f372b8c6582c692';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[4] wheel_steering_angle
    float32[4] wheel_rpm
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelControl(null);
    if (msg.wheel_steering_angle !== undefined) {
      resolved.wheel_steering_angle = msg.wheel_steering_angle;
    }
    else {
      resolved.wheel_steering_angle = new Array(4).fill(0)
    }

    if (msg.wheel_rpm !== undefined) {
      resolved.wheel_rpm = msg.wheel_rpm;
    }
    else {
      resolved.wheel_rpm = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = WheelControl;
