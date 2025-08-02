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

class GVStateCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.latCtrlType = null;
      this.targetLongitudinalVelocity = null;
      this.targetAngularVelocity = null;
      this.targetSteerAngle = null;
    }
    else {
      if (initObj.hasOwnProperty('latCtrlType')) {
        this.latCtrlType = initObj.latCtrlType
      }
      else {
        this.latCtrlType = 0;
      }
      if (initObj.hasOwnProperty('targetLongitudinalVelocity')) {
        this.targetLongitudinalVelocity = initObj.targetLongitudinalVelocity
      }
      else {
        this.targetLongitudinalVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('targetAngularVelocity')) {
        this.targetAngularVelocity = initObj.targetAngularVelocity
      }
      else {
        this.targetAngularVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('targetSteerAngle')) {
        this.targetSteerAngle = initObj.targetSteerAngle
      }
      else {
        this.targetSteerAngle = new Array(10).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GVStateCmd
    // Serialize message field [latCtrlType]
    bufferOffset = _serializer.int32(obj.latCtrlType, buffer, bufferOffset);
    // Serialize message field [targetLongitudinalVelocity]
    bufferOffset = _serializer.float32(obj.targetLongitudinalVelocity, buffer, bufferOffset);
    // Serialize message field [targetAngularVelocity]
    bufferOffset = _serializer.float32(obj.targetAngularVelocity, buffer, bufferOffset);
    // Check that the constant length array field [targetSteerAngle] has the right length
    if (obj.targetSteerAngle.length !== 10) {
      throw new Error('Unable to serialize array field targetSteerAngle - length must be 10')
    }
    // Serialize message field [targetSteerAngle]
    bufferOffset = _arraySerializer.float32(obj.targetSteerAngle, buffer, bufferOffset, 10);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GVStateCmd
    let len;
    let data = new GVStateCmd(null);
    // Deserialize message field [latCtrlType]
    data.latCtrlType = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [targetLongitudinalVelocity]
    data.targetLongitudinalVelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [targetAngularVelocity]
    data.targetAngularVelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [targetSteerAngle]
    data.targetSteerAngle = _arrayDeserializer.float32(buffer, bufferOffset, 10)
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/GVStateCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c46684704317c52202cdb27e4bbbc62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 latCtrlType
    float32 targetLongitudinalVelocity
    float32 targetAngularVelocity
    float32[10] targetSteerAngle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GVStateCmd(null);
    if (msg.latCtrlType !== undefined) {
      resolved.latCtrlType = msg.latCtrlType;
    }
    else {
      resolved.latCtrlType = 0
    }

    if (msg.targetLongitudinalVelocity !== undefined) {
      resolved.targetLongitudinalVelocity = msg.targetLongitudinalVelocity;
    }
    else {
      resolved.targetLongitudinalVelocity = 0.0
    }

    if (msg.targetAngularVelocity !== undefined) {
      resolved.targetAngularVelocity = msg.targetAngularVelocity;
    }
    else {
      resolved.targetAngularVelocity = 0.0
    }

    if (msg.targetSteerAngle !== undefined) {
      resolved.targetSteerAngle = msg.targetSteerAngle;
    }
    else {
      resolved.targetSteerAngle = new Array(10).fill(0)
    }

    return resolved;
    }
};

module.exports = GVStateCmd;
