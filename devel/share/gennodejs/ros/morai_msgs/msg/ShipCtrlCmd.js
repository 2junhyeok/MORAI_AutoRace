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

class ShipCtrlCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.thrust = null;
      this.rudder = null;
    }
    else {
      if (initObj.hasOwnProperty('thrust')) {
        this.thrust = initObj.thrust
      }
      else {
        this.thrust = 0.0;
      }
      if (initObj.hasOwnProperty('rudder')) {
        this.rudder = initObj.rudder
      }
      else {
        this.rudder = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShipCtrlCmd
    // Serialize message field [thrust]
    bufferOffset = _serializer.float32(obj.thrust, buffer, bufferOffset);
    // Serialize message field [rudder]
    bufferOffset = _serializer.float32(obj.rudder, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShipCtrlCmd
    let len;
    let data = new ShipCtrlCmd(null);
    // Deserialize message field [thrust]
    data.thrust = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rudder]
    data.rudder = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/ShipCtrlCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85d5dbe9a6145daec25dfb99701cfc26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 thrust
    float32 rudder
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShipCtrlCmd(null);
    if (msg.thrust !== undefined) {
      resolved.thrust = msg.thrust;
    }
    else {
      resolved.thrust = 0.0
    }

    if (msg.rudder !== undefined) {
      resolved.rudder = msg.rudder;
    }
    else {
      resolved.rudder = 0.0
    }

    return resolved;
    }
};

module.exports = ShipCtrlCmd;
