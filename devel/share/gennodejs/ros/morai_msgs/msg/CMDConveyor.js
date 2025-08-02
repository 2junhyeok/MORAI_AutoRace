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

class CMDConveyor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_sensor = null;
      this.palette_sensor1 = null;
      this.palette_sensor2 = null;
      this.limit_sensor = null;
    }
    else {
      if (initObj.hasOwnProperty('position_sensor')) {
        this.position_sensor = initObj.position_sensor
      }
      else {
        this.position_sensor = false;
      }
      if (initObj.hasOwnProperty('palette_sensor1')) {
        this.palette_sensor1 = initObj.palette_sensor1
      }
      else {
        this.palette_sensor1 = false;
      }
      if (initObj.hasOwnProperty('palette_sensor2')) {
        this.palette_sensor2 = initObj.palette_sensor2
      }
      else {
        this.palette_sensor2 = false;
      }
      if (initObj.hasOwnProperty('limit_sensor')) {
        this.limit_sensor = initObj.limit_sensor
      }
      else {
        this.limit_sensor = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CMDConveyor
    // Serialize message field [position_sensor]
    bufferOffset = _serializer.bool(obj.position_sensor, buffer, bufferOffset);
    // Serialize message field [palette_sensor1]
    bufferOffset = _serializer.bool(obj.palette_sensor1, buffer, bufferOffset);
    // Serialize message field [palette_sensor2]
    bufferOffset = _serializer.bool(obj.palette_sensor2, buffer, bufferOffset);
    // Serialize message field [limit_sensor]
    bufferOffset = _serializer.int32(obj.limit_sensor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CMDConveyor
    let len;
    let data = new CMDConveyor(null);
    // Deserialize message field [position_sensor]
    data.position_sensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [palette_sensor1]
    data.palette_sensor1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [palette_sensor2]
    data.palette_sensor2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [limit_sensor]
    data.limit_sensor = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/CMDConveyor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dff78b314b2d7216c66dfddb645260b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool position_sensor
    bool palette_sensor1
    bool palette_sensor2
    int32 limit_sensor
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CMDConveyor(null);
    if (msg.position_sensor !== undefined) {
      resolved.position_sensor = msg.position_sensor;
    }
    else {
      resolved.position_sensor = false
    }

    if (msg.palette_sensor1 !== undefined) {
      resolved.palette_sensor1 = msg.palette_sensor1;
    }
    else {
      resolved.palette_sensor1 = false
    }

    if (msg.palette_sensor2 !== undefined) {
      resolved.palette_sensor2 = msg.palette_sensor2;
    }
    else {
      resolved.palette_sensor2 = false
    }

    if (msg.limit_sensor !== undefined) {
      resolved.limit_sensor = msg.limit_sensor;
    }
    else {
      resolved.limit_sensor = 0
    }

    return resolved;
    }
};

module.exports = CMDConveyor;
