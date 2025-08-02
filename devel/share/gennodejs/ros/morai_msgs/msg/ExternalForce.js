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

class ExternalForce {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_x = null;
      this.position_y = null;
      this.position_z = null;
      this.force_x = null;
      this.force_y = null;
      this.force_z = null;
    }
    else {
      if (initObj.hasOwnProperty('position_x')) {
        this.position_x = initObj.position_x
      }
      else {
        this.position_x = 0.0;
      }
      if (initObj.hasOwnProperty('position_y')) {
        this.position_y = initObj.position_y
      }
      else {
        this.position_y = 0.0;
      }
      if (initObj.hasOwnProperty('position_z')) {
        this.position_z = initObj.position_z
      }
      else {
        this.position_z = 0.0;
      }
      if (initObj.hasOwnProperty('force_x')) {
        this.force_x = initObj.force_x
      }
      else {
        this.force_x = 0.0;
      }
      if (initObj.hasOwnProperty('force_y')) {
        this.force_y = initObj.force_y
      }
      else {
        this.force_y = 0.0;
      }
      if (initObj.hasOwnProperty('force_z')) {
        this.force_z = initObj.force_z
      }
      else {
        this.force_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExternalForce
    // Serialize message field [position_x]
    bufferOffset = _serializer.float32(obj.position_x, buffer, bufferOffset);
    // Serialize message field [position_y]
    bufferOffset = _serializer.float32(obj.position_y, buffer, bufferOffset);
    // Serialize message field [position_z]
    bufferOffset = _serializer.float32(obj.position_z, buffer, bufferOffset);
    // Serialize message field [force_x]
    bufferOffset = _serializer.float32(obj.force_x, buffer, bufferOffset);
    // Serialize message field [force_y]
    bufferOffset = _serializer.float32(obj.force_y, buffer, bufferOffset);
    // Serialize message field [force_z]
    bufferOffset = _serializer.float32(obj.force_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExternalForce
    let len;
    let data = new ExternalForce(null);
    // Deserialize message field [position_x]
    data.position_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_y]
    data.position_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_z]
    data.position_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [force_x]
    data.force_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [force_y]
    data.force_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [force_z]
    data.force_z = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/ExternalForce';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aefc97f66dbfb45872997157ecd3e94d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 position_x
    float32 position_y
    float32 position_z
    float32 force_x
    float32 force_y
    float32 force_z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExternalForce(null);
    if (msg.position_x !== undefined) {
      resolved.position_x = msg.position_x;
    }
    else {
      resolved.position_x = 0.0
    }

    if (msg.position_y !== undefined) {
      resolved.position_y = msg.position_y;
    }
    else {
      resolved.position_y = 0.0
    }

    if (msg.position_z !== undefined) {
      resolved.position_z = msg.position_z;
    }
    else {
      resolved.position_z = 0.0
    }

    if (msg.force_x !== undefined) {
      resolved.force_x = msg.force_x;
    }
    else {
      resolved.force_x = 0.0
    }

    if (msg.force_y !== undefined) {
      resolved.force_y = msg.force_y;
    }
    else {
      resolved.force_y = 0.0
    }

    if (msg.force_z !== undefined) {
      resolved.force_z = msg.force_z;
    }
    else {
      resolved.force_z = 0.0
    }

    return resolved;
    }
};

module.exports = ExternalForce;
