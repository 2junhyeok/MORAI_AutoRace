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

class RobotOutput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.drive_mode = null;
      this.safe_mode_en = null;
      this.is_obstacle = null;
      this.is_enabled = null;
      this.is_collision = null;
      this.is_emg_stop = null;
      this.is_protect_stop = null;
      this.is_brake = null;
      this.is_speed_limit_on_safe_mode = null;
      this.is_muting = null;
      this.attach_exist = null;
      this.attach_mode = null;
      this.is_attach_sig = null;
    }
    else {
      if (initObj.hasOwnProperty('drive_mode')) {
        this.drive_mode = initObj.drive_mode
      }
      else {
        this.drive_mode = 0;
      }
      if (initObj.hasOwnProperty('safe_mode_en')) {
        this.safe_mode_en = initObj.safe_mode_en
      }
      else {
        this.safe_mode_en = false;
      }
      if (initObj.hasOwnProperty('is_obstacle')) {
        this.is_obstacle = initObj.is_obstacle
      }
      else {
        this.is_obstacle = false;
      }
      if (initObj.hasOwnProperty('is_enabled')) {
        this.is_enabled = initObj.is_enabled
      }
      else {
        this.is_enabled = 0;
      }
      if (initObj.hasOwnProperty('is_collision')) {
        this.is_collision = initObj.is_collision
      }
      else {
        this.is_collision = false;
      }
      if (initObj.hasOwnProperty('is_emg_stop')) {
        this.is_emg_stop = initObj.is_emg_stop
      }
      else {
        this.is_emg_stop = false;
      }
      if (initObj.hasOwnProperty('is_protect_stop')) {
        this.is_protect_stop = initObj.is_protect_stop
      }
      else {
        this.is_protect_stop = false;
      }
      if (initObj.hasOwnProperty('is_brake')) {
        this.is_brake = initObj.is_brake
      }
      else {
        this.is_brake = false;
      }
      if (initObj.hasOwnProperty('is_speed_limit_on_safe_mode')) {
        this.is_speed_limit_on_safe_mode = initObj.is_speed_limit_on_safe_mode
      }
      else {
        this.is_speed_limit_on_safe_mode = false;
      }
      if (initObj.hasOwnProperty('is_muting')) {
        this.is_muting = initObj.is_muting
      }
      else {
        this.is_muting = false;
      }
      if (initObj.hasOwnProperty('attach_exist')) {
        this.attach_exist = initObj.attach_exist
      }
      else {
        this.attach_exist = false;
      }
      if (initObj.hasOwnProperty('attach_mode')) {
        this.attach_mode = initObj.attach_mode
      }
      else {
        this.attach_mode = 0;
      }
      if (initObj.hasOwnProperty('is_attach_sig')) {
        this.is_attach_sig = initObj.is_attach_sig
      }
      else {
        this.is_attach_sig = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotOutput
    // Serialize message field [drive_mode]
    bufferOffset = _serializer.int32(obj.drive_mode, buffer, bufferOffset);
    // Serialize message field [safe_mode_en]
    bufferOffset = _serializer.bool(obj.safe_mode_en, buffer, bufferOffset);
    // Serialize message field [is_obstacle]
    bufferOffset = _serializer.bool(obj.is_obstacle, buffer, bufferOffset);
    // Serialize message field [is_enabled]
    bufferOffset = _serializer.int32(obj.is_enabled, buffer, bufferOffset);
    // Serialize message field [is_collision]
    bufferOffset = _serializer.bool(obj.is_collision, buffer, bufferOffset);
    // Serialize message field [is_emg_stop]
    bufferOffset = _serializer.bool(obj.is_emg_stop, buffer, bufferOffset);
    // Serialize message field [is_protect_stop]
    bufferOffset = _serializer.bool(obj.is_protect_stop, buffer, bufferOffset);
    // Serialize message field [is_brake]
    bufferOffset = _serializer.bool(obj.is_brake, buffer, bufferOffset);
    // Serialize message field [is_speed_limit_on_safe_mode]
    bufferOffset = _serializer.bool(obj.is_speed_limit_on_safe_mode, buffer, bufferOffset);
    // Serialize message field [is_muting]
    bufferOffset = _serializer.bool(obj.is_muting, buffer, bufferOffset);
    // Serialize message field [attach_exist]
    bufferOffset = _serializer.bool(obj.attach_exist, buffer, bufferOffset);
    // Serialize message field [attach_mode]
    bufferOffset = _serializer.int32(obj.attach_mode, buffer, bufferOffset);
    // Serialize message field [is_attach_sig]
    bufferOffset = _serializer.bool(obj.is_attach_sig, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotOutput
    let len;
    let data = new RobotOutput(null);
    // Deserialize message field [drive_mode]
    data.drive_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [safe_mode_en]
    data.safe_mode_en = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_obstacle]
    data.is_obstacle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_enabled]
    data.is_enabled = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_collision]
    data.is_collision = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_emg_stop]
    data.is_emg_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_protect_stop]
    data.is_protect_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_brake]
    data.is_brake = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_speed_limit_on_safe_mode]
    data.is_speed_limit_on_safe_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_muting]
    data.is_muting = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [attach_exist]
    data.attach_exist = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [attach_mode]
    data.attach_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_attach_sig]
    data.is_attach_sig = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/RobotOutput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eaa8f4689886d42e18ac9f19e4d67999';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 drive_mode
    bool safe_mode_en
    bool is_obstacle
    int32 is_enabled
    bool is_collision
    bool is_emg_stop
    bool is_protect_stop
    bool is_brake
    bool is_speed_limit_on_safe_mode
    bool is_muting
    bool attach_exist
    int32 attach_mode
    bool is_attach_sig
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotOutput(null);
    if (msg.drive_mode !== undefined) {
      resolved.drive_mode = msg.drive_mode;
    }
    else {
      resolved.drive_mode = 0
    }

    if (msg.safe_mode_en !== undefined) {
      resolved.safe_mode_en = msg.safe_mode_en;
    }
    else {
      resolved.safe_mode_en = false
    }

    if (msg.is_obstacle !== undefined) {
      resolved.is_obstacle = msg.is_obstacle;
    }
    else {
      resolved.is_obstacle = false
    }

    if (msg.is_enabled !== undefined) {
      resolved.is_enabled = msg.is_enabled;
    }
    else {
      resolved.is_enabled = 0
    }

    if (msg.is_collision !== undefined) {
      resolved.is_collision = msg.is_collision;
    }
    else {
      resolved.is_collision = false
    }

    if (msg.is_emg_stop !== undefined) {
      resolved.is_emg_stop = msg.is_emg_stop;
    }
    else {
      resolved.is_emg_stop = false
    }

    if (msg.is_protect_stop !== undefined) {
      resolved.is_protect_stop = msg.is_protect_stop;
    }
    else {
      resolved.is_protect_stop = false
    }

    if (msg.is_brake !== undefined) {
      resolved.is_brake = msg.is_brake;
    }
    else {
      resolved.is_brake = false
    }

    if (msg.is_speed_limit_on_safe_mode !== undefined) {
      resolved.is_speed_limit_on_safe_mode = msg.is_speed_limit_on_safe_mode;
    }
    else {
      resolved.is_speed_limit_on_safe_mode = false
    }

    if (msg.is_muting !== undefined) {
      resolved.is_muting = msg.is_muting;
    }
    else {
      resolved.is_muting = false
    }

    if (msg.attach_exist !== undefined) {
      resolved.attach_exist = msg.attach_exist;
    }
    else {
      resolved.attach_exist = false
    }

    if (msg.attach_mode !== undefined) {
      resolved.attach_mode = msg.attach_mode;
    }
    else {
      resolved.attach_mode = 0
    }

    if (msg.is_attach_sig !== undefined) {
      resolved.is_attach_sig = msg.is_attach_sig;
    }
    else {
      resolved.is_attach_sig = false
    }

    return resolved;
    }
};

module.exports = RobotOutput;
