{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rTesting",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_6BB3EA2A","path":"rooms/rTesting/rTesting.yy",},
    {"name":"inst_3DA6E306","path":"rooms/rTesting/rTesting.yy",},
    {"name":"inst_7478C335","path":"rooms/rTesting/rTesting.yy",},
    {"name":"inst_59C654C9","path":"rooms/rTesting/rTesting.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRPathLayer","resourceVersion":"1.0","name":"EnemyPath","colour":4278190335,"depth":0,"effectEnabled":true,"effectType":null,"gridX":4,"gridY":4,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"pathId":{"name":"pSlimePath","path":"paths/pSlimePath/pSlimePath.yy",},"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":100,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":8,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6BB3EA2A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":40.0,"y":168.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3DA6E306","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oCamera","path":"objects/oCamera/oCamera.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":288.0,"y":104.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7478C335","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"propertyId":{"name":"targetX","path":"objects/oRoomExit/oRoomExit.yy",},"value":"32",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"propertyId":{"name":"targetY","path":"objects/oRoomExit/oRoomExit.yy",},"value":"250",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"propertyId":{"name":"targetRoom","path":"objects/oRoomExit/oRoomExit.yy",},"value":"rTesting2",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":3.5,"x":400.0,"y":128.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_59C654C9","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oSlimeTriangle","path":"objects/oSlimeTriangle/oSlimeTriangle.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":152.0,"y":120.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"MainTiles","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":45,"SerialiseWidth":80,"TileCompressedData":[
1,3,-23,77,1,4,-55,-2147483648,1,18,-23,15,1,19,-55,-2147483648,1,33,-23,15,3,34,0,0,-53,-2147483648,1,48,-23,30,3,49,0,0,-53,-2147483648,1,63,-23,47,3,64,0,0,-53,-2147483648,1,63,-19,47,1,57,-3,47,3,79,0,0,-53,-2147483648,1,63,-20,47,-2,57,4,47,2,0,0,-53,-2147483648,1,63,-23,47,3,17,0,
0,-53,-2147483648,1,63,-20,47,6,57,47,57,32,0,0,-53,-2147483648,1,63,-19,47,2,57,47,-3,57,-2,0,-53,-2147483648,1,63,-20,47,-2,57,-2,47,-2,0,-53,-2147483648,1,63,-19,47,-2,57,5,47,57,46,0,0,-53,-2147483648,1,63,-22,47,4,57,64,0,0,-53,-2147483648,1,63,-20,47,6,57,47,47,64,0,0,-53,-2147483648,1,
63,-23,47,3,64,0,0,-53,-2147483648,1,60,-23,62,3,61,0,0,-57,-2147483648,-23,0,-57,-2147483648,-23,0,-57,-2147483648,-23,0,-56,-2147483648,-24,0,-56,-2147483648,-24,0,-56,-2147483648,-24,0,-56,-2147483648,-24,0,-57,-2147483648,-23,0,-57,-2147483648,-7,0,-9,-2147483648,-7,0,-76,-2147483648,-4,0,-1573,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"TestingRooms","path":"tilesets/TestingRooms/TestingRooms.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Col","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":45,"SerialiseWidth":80,"TileCompressedData":[
-25,1,-55,-2147483648,-25,1,-55,-2147483648,-25,1,-55,-2147483648,-25,1,-55,-2147483648,5,1,0,-2147483648,-2147483648,0,-8,-2147483648,-2,0,-8,-2147483648,2,0,1,-55,-2147483648,2,1,0,-11,-2147483648,-2,0,-8,-2147483648,2,0,1,-55,-2147483648,2,1,0,-10,-2147483648,-3,0,-8,-2147483648,2,0,1,-55,-2147483648,2,1,0,-8,-2147483648,-5,0,-8,-2147483648,2,0,1,-55,-2147483648,2,1,0,-21,-2147483648,
2,0,1,-55,-2147483648,2,1,0,-21,-2147483648,-2,0,-55,-2147483648,2,1,0,-21,-2147483648,-2,0,-55,-2147483648,2,1,0,-21,-2147483648,2,0,1,-55,-2147483648,2,1,0,-21,-2147483648,2,0,1,-55,-2147483648,2,1,0,-21,-2147483648,2,0,1,-55,-2147483648,2,1,0,-21,-2147483648,2,0,1,-55,-2147483648,-25,1,-2375,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"TileSet1","path":"tilesets/TileSet1/TileSet1.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4289901234,"depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 720,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 1280,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":720,"hspeed":-1,"hview":180,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1280,"wview":320,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}