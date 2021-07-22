
"use strict";

let RobotStateRTMsg = require('./RobotStateRTMsg.js');
let Digital = require('./Digital.js');
let ToolDataMsg = require('./ToolDataMsg.js');
let IOStates = require('./IOStates.js');
let MasterboardDataMsg = require('./MasterboardDataMsg.js');
let Analog = require('./Analog.js');
let RobotModeDataMsg = require('./RobotModeDataMsg.js');

module.exports = {
  RobotStateRTMsg: RobotStateRTMsg,
  Digital: Digital,
  ToolDataMsg: ToolDataMsg,
  IOStates: IOStates,
  MasterboardDataMsg: MasterboardDataMsg,
  Analog: Analog,
  RobotModeDataMsg: RobotModeDataMsg,
};
