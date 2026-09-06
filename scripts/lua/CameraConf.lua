C_NORMAL = 0 -- Normal mode   
C_NEAR = 1 -- Close mode distance is closer than normal mode
C_HIGHSPEED = 2 -- High speed mode fixed lens, non-rotating
C_SHIP = 3 -- Sea mode on a boat, far away
local iMaxDrawRange = 85
CLU.CameraRangeXY(C_NORMAL, 50, 35)
CLU.CameraRangeZ(C_NORMAL, 10, 50)
CLU.CameraRangeFOV(C_NORMAL, 12, 35)
CLU.CameraEnableRotate(C_NORMAL, 1)
CLU.CameraShowSize(C_NORMAL, iMaxDrawRange, iMaxDrawRange)

CLU.CameraRangeXY(C_NEAR, 50, 35)
CLU.CameraRangeZ(C_NEAR, 10, 50)
CLU.CameraRangeFOV(C_NEAR, 12, 35)
CLU.CameraEnableRotate(C_NEAR, 1)
CLU.CameraShowSize(C_NEAR, iMaxDrawRange, iMaxDrawRange)

CLU.CameraRangeXY(C_HIGHSPEED, 50, 35)
CLU.CameraRangeZ(C_HIGHSPEED, 10, 50)
CLU.CameraRangeFOV(C_HIGHSPEED, 12, 35)
CLU.CameraEnableRotate(C_HIGHSPEED, 1)
CLU.CameraShowSize(C_HIGHSPEED, iMaxDrawRange, iMaxDrawRange)

CLU.CameraRangeXY(C_SHIP, 50, 35)
CLU.CameraRangeZ(C_SHIP, 10, 50)
CLU.CameraRangeFOV(C_SHIP, 12, 35)
CLU.CameraEnableRotate(C_SHIP, 1)
CLU.CameraShowSize(C_SHIP, iMaxDrawRange, iMaxDrawRange)

-- 配置文件
function LoadCameraConfig()

end
