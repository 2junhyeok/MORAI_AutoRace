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

class RobotState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_state = null;
      this.error_state = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_state')) {
        this.robot_state = initObj.robot_state
      }
      else {
        this.robot_state = 0;
      }
      if (initObj.hasOwnProperty('error_state')) {
        this.error_state = initObj.error_state
      }
      else {
        this.error_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotState
    // Serialize message field [robot_state]
    bufferOffset = _serializer.int32(obj.robot_state, buffer, bufferOffset);
    // Serialize message field [error_state]
    bufferOffset = _serializer.int32(obj.error_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotState
    let len;
    let data = new RobotState(null);
    // Deserialize message field [robot_state]
    data.robot_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error_state]
    data.error_state = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/RobotState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '835553f45e086a919a7670752929a6e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 robot_state
    int32 error_state
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotState(null);
    if (msg.robot_state !== undefined) {
      resolved.robot_state = msg.robot_state;
    }
    else {
      resolved.robot_state = 0
    }

    if (msg.error_state !== undefined) {
      resolved.error_state = msg.error_state;
    }
    else {
      resolved.error_state = 0
    }

    return resolved;
    }
};

module.exports = RobotState;
