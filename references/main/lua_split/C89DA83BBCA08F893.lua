L55_1 = _ENV
L56_1 = "C89DA83BBCA08F893"
L57_1 = _hx_e
L57_1 = L57_1()
L55_1[L56_1] = L57_1
_ENV["C89DA83BBCA08F893"]["new"] = function(A0_2)

  local L1_2, L2_2, L3_2, L4_2
  L1_2 = lua_helper_new
  L2_2 = C89DA83BBCA08F893
  L2_2 = L2_2.prototype
  L3_2 = 2
  L4_2 = 8
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = C89DA83BBCA08F893
  L2_2 = L2_2.super
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  return L1_2
end

_ENV["C89DA83BBCA08F893"]["super"] = function(A0_2, A1_2)

  local L2_2, L3_2, L4_2
  L2_2 = _hx_tab_array
  L3_2 = {}
  L3_2.length = 0
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  A0_2[2] = L2_2
  L2_2 = CFFBB0BBB02E61379
  L2_2 = L2_2.super
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L68_1 = _ENV["C89DA83BBCA08F893"]
L69_1 = "__name__"
L70_1 = "C89DA83BBCA08F893"
L68_1[L69_1] = L70_1
L68_1 = _ENV["C89DA83BBCA08F893"]
L69_1 = "prototype"
L70_1 = _hx_e
L70_1 = L70_1()
L68_1[L69_1] = L70_1
_ENV["C89DA83BBCA08F893"]["prototype"]["FD9F89A206B111A0E"] = function(A0_2, A1_2)

  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.F1E3C77B8049F40D4
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if -1 == L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = A0_2[2]
  L3_2 = L3_2[L2_2]
  return L3_2
end

_ENV["C89DA83BBCA08F893"]["prototype"]["F1E3C77B8049F40D4"] = function(A0_2, A1_2)

  local L2_2, L3_2, L4_2, L5_2
  L2_2 = 0
  L3_2 = A0_2[2]
  L3_2 = L3_2.length
  while L2_2 < L3_2 do
    L2_2 = L2_2 + 1
    L4_2 = L2_2 - 1
    L5_2 = A0_2[2]
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.ID
    if L5_2 == A1_2 then
      return L4_2
    end
  end
  L4_2 = -1
  return L4_2
end

_ENV["C89DA83BBCA08F893"]["prototype"]["F80B5D892ADA38C8B"] = function(A0_2, A1_2, A2_2)

  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.F18FFA1904F2051CE
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2[2]
  L4_2[A2_2] = L3_2
end

_ENV["C89DA83BBCA08F893"]["prototype"]["F18FFA1904F2051CE"] = function(A0_2, A1_2)

  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.F0F22FD96455B663B
  L2_2 = L2_2(L3_2)
  L4_2 = A1_2
  L3_2 = A1_2.f3D9D438D
  L5_2 = "ID"
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.ID = L3_2
  L4_2 = A1_2
  L3_2 = A1_2.f3D9D438D
  L5_2 = "pointNameStr"
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.pointNameStr = L3_2
  L4_2 = A1_2
  L3_2 = A1_2.f3D9D438D
  L5_2 = "thumbnailTextureNameStr"
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.thumbnailTextureNameStr = L3_2
  L4_2 = A1_2
  L3_2 = A1_2.f3D9D438D
  L5_2 = "descriptionNameStr"
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.descriptionNameStr = L3_2
  return L2_2
end

_ENV["C89DA83BBCA08F893"]["prototype"]["F0F22FD96455B663B"] = function(A0_2)

  local L1_2, L2_2, L3_2
  L1_2 = L16_1
  L2_2 = {}
  L3_2 = {}
  L3_2.ID = true
  L3_2.pointNameStr = true
  L3_2.thumbnailTextureNameStr = true
  L3_2.descriptionNameStr = true
  L2_2.__fields__ = L3_2
  L2_2.ID = ""
  L2_2.pointNameStr = ""
  L2_2.thumbnailTextureNameStr = ""
  L2_2.descriptionNameStr = ""
  return L1_2(L2_2)
end

L68_1 = _ENV["C89DA83BBCA08F893"]["prototype"]
L69_1 = _ENV["C89DA83BBCA08F893"]
L68_1.__class__ = L69_1
L68_1 = _ENV["C89DA83BBCA08F893"]
L69_1 = "__super__"
L69_1 = _ENV["C89DA83BBCA08F893"]["prototype"]
L70_1 = {}
L71_1 = "__index"