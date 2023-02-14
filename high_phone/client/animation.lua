local L0_1, L1_1, L2_1, L3_1
phoneProp = 0
currentAnimLib = ""
currentAnim = ""
L0_1 = Config
L0_1 = L0_1.PhoneModel
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = deletePhone
  L0_2()
  L0_2 = RequestModel
  L1_2 = GetHashKey
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L1_2(L2_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  while true do
    L0_2 = HasModelLoaded
    L1_2 = GetHashKey
    L2_2 = L0_1
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L1_2(L2_2)
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    if L0_2 then
      break
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 1
    L0_2(L1_2)
  end
  L0_2 = CreateObject
  L1_2 = GetHashKey
  L2_2 = L0_1
  L1_2 = L1_2(L2_2)
  L2_2 = 1.0
  L3_2 = 1.0
  L4_2 = 1.0
  L5_2 = 1
  L6_2 = 1
  L7_2 = 0
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  phoneProp = L0_2
  L0_2 = GetPedBoneIndex
  L1_2 = GetPlayerPed
  L2_2 = -1
  L1_2 = L1_2(L2_2)
  L2_2 = 28422
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = GetHashKey
  L2_2 = L0_1
  L1_2 = L1_2(L2_2)
  if 810403723 == L1_2 then
    L1_2 = AttachEntityToEntity
    L2_2 = phoneProp
    L3_2 = GetPlayerPed
    L4_2 = -1
    L3_2 = L3_2(L4_2)
    L4_2 = L0_2
    L5_2 = 0.0
    L6_2 = 0.0
    L7_2 = 0.0
    L8_2 = 50.0
    L9_2 = 320.0
    L10_2 = 50.0
    L11_2 = 1
    L12_2 = 1
    L13_2 = 0
    L14_2 = 0
    L15_2 = 2
    L16_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  else
    L1_2 = AttachEntityToEntity
    L2_2 = phoneProp
    L3_2 = GetPlayerPed
    L4_2 = -1
    L3_2 = L3_2(L4_2)
    L4_2 = L0_2
    L5_2 = 0.0
    L6_2 = 0.0
    L7_2 = 0.0
    L8_2 = 0.0
    L9_2 = 0.0
    L10_2 = 0.0
    L11_2 = 1
    L12_2 = 1
    L13_2 = 0
    L14_2 = 0
    L15_2 = 2
    L16_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
end
newPhoneProp = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = table
  L0_2 = L0_2.unpack
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L0_2, L1_2, L2_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = GetClosestObjectOfType
  L4_2 = L0_2
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = 1.0
  L8_2 = GetHashKey
  L9_2 = L0_1
  L8_2 = L8_2(L9_2)
  L9_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = SetEntityAsMissionEntity
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = DeleteObject
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = phoneProp
  if 0 ~= L4_2 then
    L4_2 = DeleteObject
    L5_2 = phoneProp
    L4_2(L5_2)
    phoneProp = 0
  end
end
deletePhone = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = RequestAnimDict
  L2_2 = A0_2
  L1_2(L2_2)
  while true do
    L1_2 = HasAnimDictLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 1
    L1_2(L2_2)
  end
end
LoadAnimation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = "cellphone@"
  L3_2 = A0_2
  L4_2 = IsPedInAnyVehicle
  L5_2 = L1_2
  L6_2 = false
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L2_2 = "anim@cellphone@in_car@ps"
  end
  L4_2 = LoadAnimation
  L5_2 = L2_2
  L4_2(L5_2)
  L4_2 = TaskPlayAnim
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 3.0
  L9_2 = 3.0
  L10_2 = -1
  L11_2 = 50
  L12_2 = 0
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  currentAnimLib = L2_2
  currentAnim = L3_2
  L4_2 = CheckAnimLoop
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
DoPhoneAnimation = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    while true do
      L0_3 = currentAnimLib
      if nil == L0_3 then
        break
      end
      L0_3 = currentAnim
      if nil == L0_3 then
        break
      end
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = IsEntityPlayingAnim
      L2_3 = L0_3
      L3_3 = currentAnimLib
      L4_3 = currentAnim
      L5_3 = 3
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      if not L1_3 then
        L1_3 = LoadAnimation
        L2_3 = currentAnimLib
        L1_3(L2_3)
        L1_3 = TaskPlayAnim
        L2_3 = L0_3
        L3_3 = currentAnimLib
        L4_3 = currentAnim
        L5_3 = 3.0
        L6_3 = 3.0
        L7_3 = -1
        L8_3 = 50
        L9_3 = 0
        L10_3 = false
        L11_3 = false
        L12_3 = false
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      end
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 500
      L1_3(L2_3)
    end
  end
  L0_2(L1_2)
end
CheckAnimLoop = L1_1
L1_1 = AddEventHandler
L2_1 = "onResourceStop"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = StopAnimTask
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = currentAnimLib
    L4_2 = currentAnim
    L5_2 = 2.5
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = deletePhone
    L1_2()
    currentAnimLib = nil
    currentAnim = nil
  end
end
L1_1(L2_1, L3_1)
