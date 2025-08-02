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

class Conveyor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.straight_reverse = null;
      this.left_right = null;
    }
    else {
      if (initObj.hasOwnProperty('straight_reverse')) {
        this.straight_reverse = initObj.straight_reverse
      }
      else {
        this.straight_reverse = 0;
      }
      if (initObj.hasOwnProperty('left_right')) {
        this.left_right = initObj.left_right
      }
      else {
        this.left_right = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Conveyor
    // Serialize message field [straight_reverse]
    bufferOffset = _serializer.int32(obj.straight_reverse, buffer, bufferOffset);
    // Serialize message field [left_right]
    bufferOffset = _serializer.int32(obj.left_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Conveyor
    let len;
    let data = new Conveyor(null);
    // Deserialize message field [straight_reverse]
    data.straight_reverse = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [left_right]
    data.left_right = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/Conveyor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29cf3f1705a2ed7d91592669dd89da67';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 straight_reverse
    int32 left_right
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Conveyor(null);
    if (msg.straight_reverse !== undefined) {
      resolved.straight_reverse = msg.straight_reverse;
    }
    else {
      resolved.straight_reverse = 0
    }

    if (msg.left_right !== undefined) {
      resolved.left_right = msg.left_right;
    }
    else {
      resolved.left_right = 0
    }

    return resolved;
    }
};

module.exports = Conveyor;
