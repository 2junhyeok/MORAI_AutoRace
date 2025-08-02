// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GeoVector3Message = require('./GeoVector3Message.js');

//-----------------------------------------------------------

class ShipState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.thrust = null;
      this.rudder = null;
      this.position = null;
      this.rotation = null;
      this.velocity = null;
      this.angular_velocity = null;
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
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new GeoVector3Message();
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = new GeoVector3Message();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new GeoVector3Message();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new GeoVector3Message();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShipState
    // Serialize message field [thrust]
    bufferOffset = _serializer.float32(obj.thrust, buffer, bufferOffset);
    // Serialize message field [rudder]
    bufferOffset = _serializer.float32(obj.rudder, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = GeoVector3Message.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [rotation]
    bufferOffset = GeoVector3Message.serialize(obj.rotation, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = GeoVector3Message.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = GeoVector3Message.serialize(obj.angular_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShipState
    let len;
    let data = new ShipState(null);
    // Deserialize message field [thrust]
    data.thrust = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rudder]
    data.rudder = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = GeoVector3Message.deserialize(buffer, bufferOffset);
    // Deserialize message field [rotation]
    data.rotation = GeoVector3Message.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = GeoVector3Message.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = GeoVector3Message.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/ShipState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48473abafb39e8611d0c7321f91ca943';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 thrust
    float32 rudder
    GeoVector3Message position
    GeoVector3Message rotation
    GeoVector3Message velocity
    GeoVector3Message angular_velocity
    ================================================================================
    MSG: morai_msgs/GeoVector3Message
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShipState(null);
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

    if (msg.position !== undefined) {
      resolved.position = GeoVector3Message.Resolve(msg.position)
    }
    else {
      resolved.position = new GeoVector3Message()
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = GeoVector3Message.Resolve(msg.rotation)
    }
    else {
      resolved.rotation = new GeoVector3Message()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = GeoVector3Message.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new GeoVector3Message()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = GeoVector3Message.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new GeoVector3Message()
    }

    return resolved;
    }
};

module.exports = ShipState;
