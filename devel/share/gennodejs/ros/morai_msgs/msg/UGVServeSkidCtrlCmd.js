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

class UGVServeSkidCtrlCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.steer_mode = null;
      this.forward = null;
      this.skid_steering = null;
      this.ackermann_steering = null;
      this.ackermann_steering_rear_ratio = null;
    }
    else {
      if (initObj.hasOwnProperty('steer_mode')) {
        this.steer_mode = initObj.steer_mode
      }
      else {
        this.steer_mode = 0;
      }
      if (initObj.hasOwnProperty('forward')) {
        this.forward = initObj.forward
      }
      else {
        this.forward = 0.0;
      }
      if (initObj.hasOwnProperty('skid_steering')) {
        this.skid_steering = initObj.skid_steering
      }
      else {
        this.skid_steering = 0.0;
      }
      if (initObj.hasOwnProperty('ackermann_steering')) {
        this.ackermann_steering = initObj.ackermann_steering
      }
      else {
        this.ackermann_steering = 0.0;
      }
      if (initObj.hasOwnProperty('ackermann_steering_rear_ratio')) {
        this.ackermann_steering_rear_ratio = initObj.ackermann_steering_rear_ratio
      }
      else {
        this.ackermann_steering_rear_ratio = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UGVServeSkidCtrlCmd
    // Serialize message field [steer_mode]
    bufferOffset = _serializer.int32(obj.steer_mode, buffer, bufferOffset);
    // Serialize message field [forward]
    bufferOffset = _serializer.float32(obj.forward, buffer, bufferOffset);
    // Serialize message field [skid_steering]
    bufferOffset = _serializer.float32(obj.skid_steering, buffer, bufferOffset);
    // Serialize message field [ackermann_steering]
    bufferOffset = _serializer.float32(obj.ackermann_steering, buffer, bufferOffset);
    // Serialize message field [ackermann_steering_rear_ratio]
    bufferOffset = _serializer.float32(obj.ackermann_steering_rear_ratio, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UGVServeSkidCtrlCmd
    let len;
    let data = new UGVServeSkidCtrlCmd(null);
    // Deserialize message field [steer_mode]
    data.steer_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [forward]
    data.forward = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [skid_steering]
    data.skid_steering = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ackermann_steering]
    data.ackermann_steering = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ackermann_steering_rear_ratio]
    data.ackermann_steering_rear_ratio = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/UGVServeSkidCtrlCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f54afce325790f6ec15cfae04a11605';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 steer_mode
    float32 forward
    float32 skid_steering
    float32 ackermann_steering
    float32 ackermann_steering_rear_ratio
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UGVServeSkidCtrlCmd(null);
    if (msg.steer_mode !== undefined) {
      resolved.steer_mode = msg.steer_mode;
    }
    else {
      resolved.steer_mode = 0
    }

    if (msg.forward !== undefined) {
      resolved.forward = msg.forward;
    }
    else {
      resolved.forward = 0.0
    }

    if (msg.skid_steering !== undefined) {
      resolved.skid_steering = msg.skid_steering;
    }
    else {
      resolved.skid_steering = 0.0
    }

    if (msg.ackermann_steering !== undefined) {
      resolved.ackermann_steering = msg.ackermann_steering;
    }
    else {
      resolved.ackermann_steering = 0.0
    }

    if (msg.ackermann_steering_rear_ratio !== undefined) {
      resolved.ackermann_steering_rear_ratio = msg.ackermann_steering_rear_ratio;
    }
    else {
      resolved.ackermann_steering_rear_ratio = 0.0
    }

    return resolved;
    }
};

module.exports = UGVServeSkidCtrlCmd;
