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

class GVDirectCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.steerType = null;
      this.throttle = null;
      this.brake = null;
      this.skidSteering = null;
      this.steerAngle = null;
    }
    else {
      if (initObj.hasOwnProperty('steerType')) {
        this.steerType = initObj.steerType
      }
      else {
        this.steerType = 0;
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = 0.0;
      }
      if (initObj.hasOwnProperty('skidSteering')) {
        this.skidSteering = initObj.skidSteering
      }
      else {
        this.skidSteering = 0.0;
      }
      if (initObj.hasOwnProperty('steerAngle')) {
        this.steerAngle = initObj.steerAngle
      }
      else {
        this.steerAngle = new Array(10).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GVDirectCmd
    // Serialize message field [steerType]
    bufferOffset = _serializer.int32(obj.steerType, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float32(obj.throttle, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.float32(obj.brake, buffer, bufferOffset);
    // Serialize message field [skidSteering]
    bufferOffset = _serializer.float32(obj.skidSteering, buffer, bufferOffset);
    // Check that the constant length array field [steerAngle] has the right length
    if (obj.steerAngle.length !== 10) {
      throw new Error('Unable to serialize array field steerAngle - length must be 10')
    }
    // Serialize message field [steerAngle]
    bufferOffset = _arraySerializer.float32(obj.steerAngle, buffer, bufferOffset, 10);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GVDirectCmd
    let len;
    let data = new GVDirectCmd(null);
    // Deserialize message field [steerType]
    data.steerType = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [skidSteering]
    data.skidSteering = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steerAngle]
    data.steerAngle = _arrayDeserializer.float32(buffer, bufferOffset, 10)
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/GVDirectCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '30caf69ae63756f977cf67485048deb6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 steerType
    float32 throttle
    float32 brake
    float32 skidSteering
    float32[10] steerAngle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GVDirectCmd(null);
    if (msg.steerType !== undefined) {
      resolved.steerType = msg.steerType;
    }
    else {
      resolved.steerType = 0
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.brake !== undefined) {
      resolved.brake = msg.brake;
    }
    else {
      resolved.brake = 0.0
    }

    if (msg.skidSteering !== undefined) {
      resolved.skidSteering = msg.skidSteering;
    }
    else {
      resolved.skidSteering = 0.0
    }

    if (msg.steerAngle !== undefined) {
      resolved.steerAngle = msg.steerAngle;
    }
    else {
      resolved.steerAngle = new Array(10).fill(0)
    }

    return resolved;
    }
};

module.exports = GVDirectCmd;
