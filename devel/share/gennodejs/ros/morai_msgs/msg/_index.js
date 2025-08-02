
"use strict";

let GeoVector3Message = require('./GeoVector3Message.js');
let SyncModeAddObject = require('./SyncModeAddObject.js');
let SyncModeScenarioLoad = require('./SyncModeScenarioLoad.js');
let PREvent = require('./PREvent.js');
let VehicleCollisionData = require('./VehicleCollisionData.js');
let CMDConveyor = require('./CMDConveyor.js');
let GetTrafficLightStatus = require('./GetTrafficLightStatus.js');
let CollisionData = require('./CollisionData.js');
let EgoVehicleStatus = require('./EgoVehicleStatus.js');
let RadarDetection = require('./RadarDetection.js');
let ReplayInfo = require('./ReplayInfo.js');
let Conveyor = require('./Conveyor.js');
let SyncModeCmd = require('./SyncModeCmd.js');
let FaultInjection_Sensor = require('./FaultInjection_Sensor.js');
let SetTrafficLight = require('./SetTrafficLight.js');
let SyncModeCtrlCmd = require('./SyncModeCtrlCmd.js');
let MoraiSimProcHandle = require('./MoraiSimProcHandle.js');
let RadarDetections = require('./RadarDetections.js');
let WaitForTick = require('./WaitForTick.js');
let FaultInjection_Response = require('./FaultInjection_Response.js');
let MoraiSimProcStatus = require('./MoraiSimProcStatus.js');
let ObjectStatusExtended = require('./ObjectStatusExtended.js');
let CtrlCmd = require('./CtrlCmd.js');
let MultiEgoSetting = require('./MultiEgoSetting.js');
let NpcGhostInfo = require('./NpcGhostInfo.js');
let ERP42Info = require('./ERP42Info.js');
let WheelControl = require('./WheelControl.js');
let UGVServeSkidCtrlCmd = require('./UGVServeSkidCtrlCmd.js');
let ShipCtrlCmd = require('./ShipCtrlCmd.js');
let SyncModeCmdResponse = require('./SyncModeCmdResponse.js');
let IntscnTL = require('./IntscnTL.js');
let VelocityCmd = require('./VelocityCmd.js');
let SaveSensorData = require('./SaveSensorData.js');
let MoraiTLIndex = require('./MoraiTLIndex.js');
let DillyCmdResponse = require('./DillyCmdResponse.js');
let SkidSteer6wUGVCtrlCmd = require('./SkidSteer6wUGVCtrlCmd.js');
let FaultInjection_Controller = require('./FaultInjection_Controller.js');
let SkidSteer6wUGVStatus = require('./SkidSteer6wUGVStatus.js');
let ObjectStatusListExtended = require('./ObjectStatusListExtended.js');
let ObjectStatusList = require('./ObjectStatusList.js');
let SyncModeResultResponse = require('./SyncModeResultResponse.js');
let ManipulatorControl = require('./ManipulatorControl.js');
let MultiPlayEventRequest = require('./MultiPlayEventRequest.js');
let MultiPlayEventResponse = require('./MultiPlayEventResponse.js');
let DillyCmd = require('./DillyCmd.js');
let WaitForTickResponse = require('./WaitForTickResponse.js');
let EgoVehicleStatusExtended = require('./EgoVehicleStatusExtended.js');
let MapSpecIndex = require('./MapSpecIndex.js');
let MoraiSrvResponse = require('./MoraiSrvResponse.js');
let FaultInjection_Tire = require('./FaultInjection_Tire.js');
let SensorPosControl = require('./SensorPosControl.js');
let SyncModeSetGear = require('./SyncModeSetGear.js');
let VehicleCollision = require('./VehicleCollision.js');
let FaultStatusInfo_Vehicle = require('./FaultStatusInfo_Vehicle.js');
let SyncModeInfo = require('./SyncModeInfo.js');
let DdCtrlCmd = require('./DdCtrlCmd.js');
let EgoDdVehicleStatus = require('./EgoDdVehicleStatus.js');
let SkateboardStatus = require('./SkateboardStatus.js');
let GhostMessage = require('./GhostMessage.js');
let PRStatus = require('./PRStatus.js');
let FaultStatusInfo = require('./FaultStatusInfo.js');
let Obstacle = require('./Obstacle.js');
let Obstacles = require('./Obstacles.js');
let ObjectStatus = require('./ObjectStatus.js');
let MoraiTLInfo = require('./MoraiTLInfo.js');
let NpcGhostCmd = require('./NpcGhostCmd.js');
let ShipState = require('./ShipState.js');
let WoowaDillyStatus = require('./WoowaDillyStatus.js');
let GVDirectCmd = require('./GVDirectCmd.js');
let MapSpec = require('./MapSpec.js');
let FaultStatusInfo_Sensor = require('./FaultStatusInfo_Sensor.js');
let RobotOutput = require('./RobotOutput.js');
let Transforms = require('./Transforms.js');
let IntersectionControl = require('./IntersectionControl.js');
let TOF = require('./TOF.js');
let TrafficLight = require('./TrafficLight.js');
let ScenarioLoad = require('./ScenarioLoad.js');
let PRCtrlCmd = require('./PRCtrlCmd.js');
let SkateboardCtrlCmd = require('./SkateboardCtrlCmd.js');
let EventInfo = require('./EventInfo.js');
let RobotState = require('./RobotState.js');
let IntersectionStatus = require('./IntersectionStatus.js');
let VehicleSpecIndex = require('./VehicleSpecIndex.js');
let GPSMessage = require('./GPSMessage.js');
let SVADC = require('./SVADC.js');
let Lamps = require('./Lamps.js');
let FaultStatusInfo_Overall = require('./FaultStatusInfo_Overall.js');
let GVStateCmd = require('./GVStateCmd.js');
let VehicleSpec = require('./VehicleSpec.js');
let ExternalForce = require('./ExternalForce.js');
let SyncModeRemoveObject = require('./SyncModeRemoveObject.js');

module.exports = {
  GeoVector3Message: GeoVector3Message,
  SyncModeAddObject: SyncModeAddObject,
  SyncModeScenarioLoad: SyncModeScenarioLoad,
  PREvent: PREvent,
  VehicleCollisionData: VehicleCollisionData,
  CMDConveyor: CMDConveyor,
  GetTrafficLightStatus: GetTrafficLightStatus,
  CollisionData: CollisionData,
  EgoVehicleStatus: EgoVehicleStatus,
  RadarDetection: RadarDetection,
  ReplayInfo: ReplayInfo,
  Conveyor: Conveyor,
  SyncModeCmd: SyncModeCmd,
  FaultInjection_Sensor: FaultInjection_Sensor,
  SetTrafficLight: SetTrafficLight,
  SyncModeCtrlCmd: SyncModeCtrlCmd,
  MoraiSimProcHandle: MoraiSimProcHandle,
  RadarDetections: RadarDetections,
  WaitForTick: WaitForTick,
  FaultInjection_Response: FaultInjection_Response,
  MoraiSimProcStatus: MoraiSimProcStatus,
  ObjectStatusExtended: ObjectStatusExtended,
  CtrlCmd: CtrlCmd,
  MultiEgoSetting: MultiEgoSetting,
  NpcGhostInfo: NpcGhostInfo,
  ERP42Info: ERP42Info,
  WheelControl: WheelControl,
  UGVServeSkidCtrlCmd: UGVServeSkidCtrlCmd,
  ShipCtrlCmd: ShipCtrlCmd,
  SyncModeCmdResponse: SyncModeCmdResponse,
  IntscnTL: IntscnTL,
  VelocityCmd: VelocityCmd,
  SaveSensorData: SaveSensorData,
  MoraiTLIndex: MoraiTLIndex,
  DillyCmdResponse: DillyCmdResponse,
  SkidSteer6wUGVCtrlCmd: SkidSteer6wUGVCtrlCmd,
  FaultInjection_Controller: FaultInjection_Controller,
  SkidSteer6wUGVStatus: SkidSteer6wUGVStatus,
  ObjectStatusListExtended: ObjectStatusListExtended,
  ObjectStatusList: ObjectStatusList,
  SyncModeResultResponse: SyncModeResultResponse,
  ManipulatorControl: ManipulatorControl,
  MultiPlayEventRequest: MultiPlayEventRequest,
  MultiPlayEventResponse: MultiPlayEventResponse,
  DillyCmd: DillyCmd,
  WaitForTickResponse: WaitForTickResponse,
  EgoVehicleStatusExtended: EgoVehicleStatusExtended,
  MapSpecIndex: MapSpecIndex,
  MoraiSrvResponse: MoraiSrvResponse,
  FaultInjection_Tire: FaultInjection_Tire,
  SensorPosControl: SensorPosControl,
  SyncModeSetGear: SyncModeSetGear,
  VehicleCollision: VehicleCollision,
  FaultStatusInfo_Vehicle: FaultStatusInfo_Vehicle,
  SyncModeInfo: SyncModeInfo,
  DdCtrlCmd: DdCtrlCmd,
  EgoDdVehicleStatus: EgoDdVehicleStatus,
  SkateboardStatus: SkateboardStatus,
  GhostMessage: GhostMessage,
  PRStatus: PRStatus,
  FaultStatusInfo: FaultStatusInfo,
  Obstacle: Obstacle,
  Obstacles: Obstacles,
  ObjectStatus: ObjectStatus,
  MoraiTLInfo: MoraiTLInfo,
  NpcGhostCmd: NpcGhostCmd,
  ShipState: ShipState,
  WoowaDillyStatus: WoowaDillyStatus,
  GVDirectCmd: GVDirectCmd,
  MapSpec: MapSpec,
  FaultStatusInfo_Sensor: FaultStatusInfo_Sensor,
  RobotOutput: RobotOutput,
  Transforms: Transforms,
  IntersectionControl: IntersectionControl,
  TOF: TOF,
  TrafficLight: TrafficLight,
  ScenarioLoad: ScenarioLoad,
  PRCtrlCmd: PRCtrlCmd,
  SkateboardCtrlCmd: SkateboardCtrlCmd,
  EventInfo: EventInfo,
  RobotState: RobotState,
  IntersectionStatus: IntersectionStatus,
  VehicleSpecIndex: VehicleSpecIndex,
  GPSMessage: GPSMessage,
  SVADC: SVADC,
  Lamps: Lamps,
  FaultStatusInfo_Overall: FaultStatusInfo_Overall,
  GVStateCmd: GVStateCmd,
  VehicleSpec: VehicleSpec,
  ExternalForce: ExternalForce,
  SyncModeRemoveObject: SyncModeRemoveObject,
};
