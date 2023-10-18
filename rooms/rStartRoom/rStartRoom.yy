{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rStartRoom",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_3DA6E306_1_1","path":"rooms/rStartRoom/rStartRoom.yy",},
    {"name":"inst_7478C335_1_1","path":"rooms/rStartRoom/rStartRoom.yy",},
    {"name":"inst_1CC4B23E_1_1","path":"rooms/rStartRoom/rStartRoom.yy",},
    {"name":"inst_42ED2D01_1_1","path":"rooms/rStartRoom/rStartRoom.yy",},
    {"name":"inst_C0ABC34_1_1","path":"rooms/rStartRoom/rStartRoom.yy",},
    {"name":"inst_4032F334","path":"rooms/rStartRoom/rStartRoom.yy",},
    {"name":"inst_37F758DE","path":"rooms/rStartRoom/rStartRoom.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances_Dead","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances_Walls","depth":100,"effectEnabled":true,"effectType":null,"gridX":4,"gridY":4,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Enemies","depth":200,"effectEnabled":true,"effectType":null,"gridX":4,"gridY":4,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":300,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":8,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3DA6E306_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oCamera","path":"objects/oCamera/oCamera.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-40.0,"y":56.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7478C335_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"propertyId":{"name":"targetX","path":"objects/oRoomExit/oRoomExit.yy",},"value":"202",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"propertyId":{"name":"targetY","path":"objects/oRoomExit/oRoomExit.yy",},"value":"458",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"propertyId":{"name":"targetRoom","path":"objects/oRoomExit/oRoomExit.yy",},"value":"rGuardRoom_1",},
          ],"rotation":0.0,"scaleX":2.0,"scaleY":1.0,"x":240.0,"y":544.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1CC4B23E_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Control","path":"objects/obj_Control/obj_Control.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-40.0,"y":88.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_42ED2D01_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_SetupPathway","path":"objects/obj_SetupPathway/obj_SetupPathway.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-40.0,"y":120.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_C0ABC34_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_Dead","path":"objects/obj_enemy_Dead/obj_enemy_Dead.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-40.0,"y":152.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4032F334","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Player","path":"objects/obj_Player/obj_Player.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":88.0,"y":592.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_37F758DE","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"propertyId":{"name":"targetX","path":"objects/oRoomExit/oRoomExit.yy",},"value":"202",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"propertyId":{"name":"targetY","path":"objects/oRoomExit/oRoomExit.yy",},"value":"458",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"propertyId":{"name":"targetRoom","path":"objects/oRoomExit/oRoomExit.yy",},"value":"rGuardRoom_1",},
          ],"rotation":0.0,"scaleX":2.0,"scaleY":1.0,"x":304.0,"y":544.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Col","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":45,"SerialiseWidth":80,"TileCompressedData":[
-25,1,-34,-2147483648,-18,1,-3,-2147483648,-25,1,-34,-2147483648,-18,1,-3,-2147483648,-25,1,-34,-2147483648,-18,1,-3,-2147483648,-25,1,-34,-2147483648,-18,1,-3,-2147483648,5,1,0,-2147483648,-2147483648,0,-8,-2147483648,-2,0,-8,-2147483648,2,0,1,-34,-2147483648,1,1,-16,-2147483648,1,1,-3,-2147483648,2,1,0,-11,-2147483648,-2,0,-8,-2147483648,2,0,1,-34,-2147483648,1,1,-16,-2147483648,1,1,-3,-2147483648,2,
1,0,-10,-2147483648,-3,0,-8,-2147483648,2,0,1,-34,-2147483648,1,1,-16,-2147483648,1,1,-3,-2147483648,2,1,0,-8,-2147483648,-5,0,-8,-2147483648,2,0,1,-34,-2147483648,1,1,-16,-2147483648,1,1,-3,-2147483648,2,1,0,-9,-2147483648,1,0,-11,-2147483648,2,0,1,-34,-2147483648,1,1,-16,-2147483648,1,1,-3,-2147483648,2,1,0,-9,-2147483648,1,0,-11,-2147483648,-2,0,-34,-2147483648,1,1,
-16,-2147483648,1,1,-3,-2147483648,2,1,0,-9,-2147483648,1,0,-11,-2147483648,-2,0,-34,-2147483648,1,1,-16,-2147483648,1,1,-3,-2147483648,2,1,0,-21,-2147483648,2,0,1,-34,-2147483648,1,1,-16,-2147483648,1,1,-3,-2147483648,2,1,0,-21,-2147483648,2,0,1,-34,-2147483648,1,1,-16,-2147483648,1,1,-3,-2147483648,2,1,0,-21,-2147483648,2,0,1,-34,-2147483648,1,1,-16,-2147483648,1,1,-3,
-2147483648,2,1,0,-21,-2147483648,2,0,1,-34,-2147483648,1,1,-16,-2147483648,1,1,-3,-2147483648,1,1,-23,0,1,1,-34,-2147483648,1,1,-16,-2147483648,1,1,-3,-2147483648,1,1,-23,-2147483648,1,1,-34,-2147483648,1,1,-16,-2147483648,1,1,-3,-2147483648,1,1,-23,-2147483648,1,1,-34,-2147483648,1,1,-16,-2147483648,1,1,-3,-2147483648,1,1,-23,-2147483648,-36,1,-16,-2147483648,1,1,-3,-2147483648,1,
1,-23,-2147483648,-36,1,-16,-2147483648,1,1,-3,-2147483648,2,1,0,-22,-2147483648,-36,1,-16,-2147483648,1,1,-3,-2147483648,2,1,0,-22,-2147483648,-36,1,-16,-2147483648,1,1,-3,-2147483648,1,1,-75,-2147483648,1,1,-3,-2147483648,1,1,-75,-2147483648,1,1,-3,-2147483648,1,1,-75,-2147483648,1,1,-3,-2147483648,1,1,-75,-2147483648,1,1,-3,-2147483648,1,1,-20,-2147483648,-10,1,-45,-2147483648,1,1,-3,
-2147483648,1,1,-20,-2147483648,-10,1,-45,-2147483648,5,1,0,-2147483648,-2147483648,1,-20,-2147483648,-2,1,-6,-2147483648,-2,1,-45,-2147483648,5,1,0,-2147483648,-2147483648,1,-20,-2147483648,-2,1,-6,-2147483648,-2,1,-45,-2147483648,5,1,0,-2147483648,-2147483648,1,-20,-2147483648,-2,1,-6,-2147483648,-2,1,-45,-2147483648,5,1,0,-2147483648,-2147483648,1,-20,-2147483648,-2,1,-6,-2147483648,-2,1,-45,-2147483648,5,1,-2147483648,0,-2147483648,1,-20,
-2147483648,-2,1,-6,-2147483648,-2,1,-45,-2147483648,1,1,-3,-2147483648,1,1,-20,-2147483648,-2,1,-6,-2147483648,-2,1,-45,-2147483648,1,1,-3,-2147483648,1,1,-20,-2147483648,-10,1,-45,-2147483648,1,1,-3,-2147483648,1,1,-20,-2147483648,-10,1,-45,-2147483648,1,1,-3,-2147483648,1,1,-20,-2147483648,-2,0,-53,-2147483648,1,1,-3,-2147483648,1,1,-20,-2147483648,-2,0,-53,-2147483648,1,1,-3,-2147483648,1,1,-20,
-2147483648,-2,0,-53,-2147483648,1,1,-3,-2147483648,1,1,-20,-2147483648,-9,0,-46,-2147483648,1,1,-3,-2147483648,1,1,-20,-2147483648,-3,0,-52,-2147483648,1,1,-3,-2147483648,1,1,-20,-2147483648,-2,0,-53,-2147483648,1,1,-3,-2147483648,1,1,-20,-2147483648,-2,0,-53,-2147483648,1,1,-3,-2147483648,-77,1,-83,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"TileSet1","path":"tilesets/TileSet1/TileSet1.yy",},"userdefinedDepth":false,"visible":false,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"MainTiles","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":45,"SerialiseWidth":80,"TileCompressedData":[
-2,0,1,3,-43,77,1,4,-4,-2147483648,-31,0,1,18,-43,15,1,19,-4,-2147483648,-31,0,1,33,-43,15,1,34,-4,-2147483648,-31,0,1,48,-43,30,5,49,0,0,-2147483648,-2147483648,-31,0,1,63,-3,47,-2,57,-4,47,-2,57,-4,47,-2,57,-4,47,-2,57,-4,47,-2,57,-4,47,-2,57,-3,47,-2,57,-3,47,5,64,0,0,
-2147483648,-2147483648,-31,0,1,63,-43,47,5,64,0,0,-2147483648,-2147483648,-31,0,1,63,-43,47,5,64,0,0,-2147483648,-2147483648,-31,0,2,63,57,-41,47,6,57,64,0,0,-2147483648,-2147483648,-31,0,2,63,57,-41,47,6,57,64,0,0,-2147483648,-2147483648,-31,0,1,63,-43,47,5,64,0,0,-2147483648,-2147483648,-31,0,1,63,-7,47,1,46,-10,62,1,45,-6,47,
1,46,-10,62,1,45,-6,47,5,64,0,0,-2147483648,-2147483648,-31,0,1,63,-7,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-6,47,1,64,-35,0,1,63,-7,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-6,47,1,64,-35,0,2,63,57,-6,47,1,64,-10,0,1,63,-6,47,1,64,-10,
0,1,63,-5,47,2,57,64,-35,0,2,63,57,-6,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-5,47,2,57,64,-35,0,1,63,-7,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-6,47,1,64,-35,0,1,63,-7,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-6,47,
1,64,-35,0,1,63,-7,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-6,47,1,64,-35,0,1,63,-7,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-6,47,1,64,-35,0,2,63,57,-6,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-5,47,2,57,64,-35,0,2,63,
57,-6,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-5,47,2,57,64,-35,0,1,63,-7,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-6,47,1,64,-35,0,1,63,-7,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-6,47,1,64,-35,0,1,63,-7,47,1,64,-10,0,
1,63,-6,47,1,64,-10,0,1,63,-6,47,1,64,-35,0,1,63,-7,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-6,47,1,64,-35,0,2,63,57,-6,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-6,47,1,64,-35,0,2,63,57,-6,47,1,64,-10,0,1,63,-6,47,1,64,
-10,0,1,63,-6,47,1,64,-35,0,1,63,-7,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-5,47,2,57,64,-35,0,1,63,-7,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-5,47,2,57,64,-35,0,1,63,-7,47,1,64,-10,0,1,63,-6,47,1,64,-10,0,1,63,-6,47,
1,64,-35,0,1,63,-7,47,1,79,-10,77,1,78,-6,47,1,79,-10,77,1,78,-6,47,1,79,-6,77,-29,0,2,63,57,-6,47,1,2,-10,15,1,1,-6,47,1,2,-10,15,1,1,-6,47,1,2,-6,15,-29,0,2,63,57,-6,47,1,17,-4,15,-2,20,-4,15,1,16,-6,47,1,17,-4,15,-2,20,
-4,15,1,16,-6,47,1,17,-6,15,-29,0,1,63,-7,47,1,32,-4,30,-2,35,-4,30,1,31,-6,47,1,32,-4,30,-2,35,-4,30,1,31,-6,47,1,32,-6,30,-29,0,1,63,-50,47,-29,0,1,63,-50,47,-29,0,1,63,-50,47,-29,0,2,63,57,-49,47,-29,0,2,63,57,-49,47,-29,0,1,63,
-50,47,-29,0,1,63,-50,47,-29,0,1,60,-50,62,-267,0,],"TileDataFormat":1,},"tilesetId":{"name":"TestingRooms","path":"tilesets/TestingRooms/TestingRooms.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4279834905,"depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Game",
    "path": "folders/Rooms/Game.yy",
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