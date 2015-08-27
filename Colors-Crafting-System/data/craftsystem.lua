function Player.isProfession(self, storage)
   if self:getStorageValue(storage) >= 1 then
     return true
   end
end
craftingProfessionsConfig = {
   [50501] = {
     skillName = "Blacksmithing",
     skillRecipes = {
       [1] = {item = 2400, skill = 10, storage = 101, mats = {{2554, 1}, {2120, 1}}, time = 5, difficulty = 20},
       [2] = {item = 2432, skill = 15, storage = 102, mats = {{2148, 10}, {10608, 10}}, time = 5, difficulty = 20},
       [3] = {item = 2178, skill = 20, storage = 103, mats = {{2177, 1}, {1295, 1}, {2146, 3}}, time = 5, difficulty = 40},
       [4] = {item = 5944, skill = 20, storage = 104, mats = {{2177, 1}, {1295, 1}, {2150, 3}}, time = 5, difficulty = 40},
       [5] = {item = 2363, skill = 25, storage = 105, mats = {{2177, 1}, {2177, 1}, {1295, 1}, {2798, 1}, {2788, 1}}, time = 5, difficulty = 50},
       [6] = {item = 10092, skill = 30, storage = 106, mats = {{2677, 3}, {1685, 1}, {2013, 1}, {2015, 1}}, time = 5, difficulty = 60},
       [7] = {item = 4864, skill = 35, storage = 107, mats = {{4850, 1}, {2913, 1}, {2144, 1}}, time = 5, difficulty = 40}
     },
     message = "Crafting allows you to create anything from potions to bombs to weapons of the highest caliber. The materials used in crafting can be obtained through gathering and through drops in dungeons and the open world.\n\n"
   },
   [50502] = {
     skillName = "Alchemy",
     skillRecipes = { --Based on Shinmaru/Soul4Soul Alchemy's System
       [1] = {item = 8474, skill = 10, storage = 201, mats = {{2007, 1}, {2795, 1}, {2760, 1}}, time = 5, difficulty = 20},
       [2] = {item = 2152, skill = 15, storage = 202, mats = {{2148, 10}, {10608, 2}}, time = 5, difficulty = 20},
       [3] = {item = 2178, skill = 20, storage = 203, mats = {{2177, 1}, {1295, 1}, {2146, 3}}, time = 5, difficulty = 40},
       [4] = {item = 5944, skill = 20, storage = 204, mats = {{2177, 1}, {1295, 1}, {2150, 3}}, time = 5, difficulty = 40},
       [5] = {item = 2363, skill = 25, storage = 205, mats = {{2177, 1}, {2177, 1}, {1295, 1}, {2798, 1}, {2788, 1}}, time = 5, difficulty = 50},
       [6] = {item = 10092, skill = 30, storage = 206, mats = {{2677, 3}, {1685, 1}, {2013, 1}, {2015, 1}}, time = 5, difficulty = 60},
       [7] = {item = 4864, skill = 35, storage = 207, mats = {{4850, 1}, {2913, 1}, {2144, 1}}, time = 5, difficulty = 40},
       [8] = {item = 2276, skill = 40, storage = 208, mats = {{10558, 1}, {2260, 1}, {10554, 1}, {2151, 1}, {5951, 1}, {2265, 1}}, time = 5, difficulty = 40},
       [9] = {item = 2160, skill = 45, storage = 209, mats = {{2152, 1}, {2145, 1}, {2146, 1}, {2800, 1}}, time = 5, difficulty = 30},
       [10] = {item = 11201, skill = 45, storage = 210, mats = {{2759, 1}, {10565, 1}, {2803, 1}, {2692, 1}}, time = 5, difficulty = 40},
       [11] = {item = 5892, skill = 5, storage = 211, mats = {{5468, 1}, {2393, 1}}, time = 5, difficulty = 50},
       [12] = {item = 5887, skill = 5, storage = 212, mats = {{5468, 1}, {2487, 1}}, time = 5, difficulty = 50},
       [13] = {item = 5888, skill = 5, storage = 213, mats = {{5468, 1}, {2462, 1}}, time = 5, difficulty = 50},
       [14] = {item = 5889, skill = 5, storage = 214, mats = {{5468, 1}, {2516, 1}}, time = 5, difficulty = 50},
       [15] = {item = 5891, skill = 10, storage = 215, mats = {{2195, 1}, {4265, 1}, {2151, 1}}, time = 5, difficulty = 40},
       [16] = {item = 5884, skill = 10, storage = 216, mats = {{2498, 1}, {2498, 1}, {2913, 1}, {5865, 1}}, time = 5, difficulty = 40},
       [17] = {item = 5885, skill = 10, storage = 217, mats = {{2475, 1}, {2475, 1}, {2475, 1}, {2475, 1}, {2015, 1}, {5865, 1}}, time = 5, difficulty = 40},
       [18] = {item = 7439, skill = 60, storage = 218, mats = {{6558, 1}, {2007, 1}, {4993, 1}, {5480, 1}, {2796, 1}}, time = 5, difficulty = 30},
       [19] = {item = 7440, skill = 60, storage = 219, mats = {{6558, 1}, {2007, 1}, {4992, 1}, {3955, 1}, {7250, 1}}, time = 5, difficulty = 30},
       [20] = {item = 7443, skill = 60, storage = 220, mats = {{6558, 1}, {2007, 1}, {4994, 1}, {2193, 1}, {2031, 1}}, time = 5, difficulty = 30},
       [21] = {item = 7140, skill = 65, storage = 221, mats = {{7141, 1}, {2015, 1}, {5014, 1}, {2235, 1}, {7439, 1}, {7440, 1}, {7443, 1}, {4845, 1}}, time = 5, difficulty = 60},
       [22] = {item = 9971, skill = 70, storage = 222, mats = {{10552, 1}, {2157, 1}, {2159, 1}, {5906, 1}}, time = 5, difficulty = 50},
       [23] = {item = 2284, skill = 75, storage = 223, mats = {{10523, 1}, {2260, 1}, {10554, 1}, {2151, 1}, {2273, 1}}, time = 5, difficulty = 30},
       [24] = {item = 11387, skill = 80, storage = 224, mats = {{2805, 1}, {2798, 1}, {8582, 1}}, time = 5, difficulty = 70},
       [25] = {item = 8980, skill = 90, storage = 225, mats = {{5941, 1}, {10559, 1}, {2194, 1}, {2377, 1}}, time = 5, difficulty = 80},
       [26] = {item = 2184, skill = 90, storage = 226, mats = {{9942, 1}, {9941, 1}, {9980, 1}, {2445, 1}}, time = 5, difficulty = 80},
       [27] = {item = 2352, skill = 90, storage = 227, mats = {{2177, 1}, {2160, 1}, {2544, 1}, {2544, 1}, {2802, 1}}, time = 5, difficulty = 80},
       [28] = {item = 9969, skill = 100, storage = 228, mats = {{5741, 1}, {2229, 1}, {5669, 1}, {5809, 1}, {2143, 1}}, time = 5, difficulty = 90},
       [29] = {item = 9006, skill = 110, storage = 229, mats = {{8859, 1}, {2289, 1}, {2807, 1}, {10556, 1}, {2545, 1}, {5879, 1}}, time = 5, difficulty = 100},
       [30] = {item = 2348, skill = 120, storage = 230, mats = {{2153, 1}, {2154, 1}, {2155, 1}, {2156, 1}, {2158, 1}, {2260, 1}, {2260, 1}, {2600, 1}}, time = 5, difficulty = 100}
     },
     message = "Crafting allows you to create ~"
   },
   [50503] = {
     skillName = "Inscription",
     skillRecipes = {
       [1] = {item = 2400, skill = 10, storage = 301, mats = {{2554, 1}, {2120, 1}}, time = 5, difficulty = 20, attr = {attack = 10,  defense = 10}},
       [2] = {item = 2432, skill = 15, storage = 302, mats = {{2148, 10}, {10608, 10}}, time = 5, difficulty = 20},
       [3] = {item = 2178, skill = 20, storage = 303, mats = {{2177, 1}, {1295, 1}, {2146, 3}}, time = 5, difficulty = 40},
       [4] = {item = 5944, skill = 20, storage = 304, mats = {{2177, 1}, {1295, 1}, {2150, 3}}, time = 5, difficulty = 40},
       [5] = {item = 2363, skill = 25, storage = 305, mats = {{2177, 1}, {2177, 1}, {1295, 1}, {2798, 1}, {2788, 1}}, time = 5, difficulty = 50},
       [6] = {item = 10092, skill = 30, storage = 306, mats = {{2677, 3}, {1685, 1}, {2013, 1}, {2015, 1}}, time = 5, difficulty = 60},
       [7] = {item = 4864, skill = 35, storage = 307, mats = {{4850, 1}, {2913, 1}, {2144, 1}}, time = 5, difficulty = 40}
     },
     message = "Crafting allows you to create ~"
   },
   [50504] = {
     skillName = "Tailoring",
     skillRecipes = {
       [1] = {item = 2400, skill = 10, storage = 401, mats = {{2554, 1}, {2120, 1}}, time = 5, difficulty = 20},
       [2] = {item = 2432, skill = 15, storage = 402, mats = {{2148, 10}, {10608, 10}}, time = 5, difficulty = 20},
       [3] = {item = 2178, skill = 20, storage = 403, mats = {{2177, 1}, {1295, 1}, {2146, 3}}, time = 5, difficulty = 40},
       [4] = {item = 5944, skill = 20, storage = 404, mats = {{2177, 1}, {1295, 1}, {2150, 3}}, time = 5, difficulty = 40},
       [5] = {item = 2363, skill = 25, storage = 405, mats = {{2177, 1}, {2177, 1}, {1295, 1}, {2798, 1}, {2788, 1}}, time = 5, difficulty = 50},
       [6] = {item = 10092, skill = 30, storage = 406, mats = {{2677, 3}, {1685, 1}, {2013, 1}, {2015, 1}}, time = 5, difficulty = 60},
       [7] = {item = 4864, skill = 35, storage = 407, mats = {{4850, 1}, {2913, 1}, {2144, 1}}, time = 5, difficulty = 40}
     },
     message = "Crafting allows you to create ~"
   },
   [50505] = {
     skillName = "Leatherworking",
     skillRecipes = {
       [1] = {item = 2400, skill = 10, storage = 501, mats = {{2554, 1}, {2120, 1}}, time = 5, difficulty = 20},
       [2] = {item = 2432, skill = 15, storage = 502, mats = {{2148, 10}, {10608, 10}}, time = 5, difficulty = 20},
       [3] = {item = 2178, skill = 20, storage = 503, mats = {{2177, 1}, {1295, 1}, {2146, 3}}, time = 5, difficulty = 40},
       [4] = {item = 5944, skill = 20, storage = 504, mats = {{2177, 1}, {1295, 1}, {2150, 3}}, time = 5, difficulty = 40},
       [5] = {item = 2363, skill = 25, storage = 505, mats = {{2177, 1}, {2177, 1}, {1295, 1}, {2798, 1}, {2788, 1}}, time = 5, difficulty = 50},
       [6] = {item = 10092, skill = 30, storage = 506, mats = {{2677, 3}, {1685, 1}, {2013, 1}, {2015, 1}}, time = 5, difficulty = 60},
       [7] = {item = 4864, skill = 35, storage = 507, mats = {{4850, 1}, {2913, 1}, {2144, 1}}, time = 5, difficulty = 40}
     },
     message = "Crafting allows you to create ~"
   },
   [50506] = {
     skillName = "Engineering",
     skillRecipes = {
       [1] = {item = 2400, skill = 10, storage = 601, mats = {{2554, 1}, {2120, 1}}, time = 5, difficulty = 20},
       [2] = {item = 2432, skill = 15, storage = 602, mats = {{2148, 10}, {10608, 10}}, time = 5, difficulty = 20},
       [3] = {item = 2178, skill = 20, storage = 603, mats = {{2177, 1}, {1295, 1}, {2146, 3}}, time = 5, difficulty = 40},
       [4] = {item = 5944, skill = 20, storage = 604, mats = {{2177, 1}, {1295, 1}, {2150, 3}}, time = 5, difficulty = 40},
       [5] = {item = 2363, skill = 25, storage = 605, mats = {{2177, 1}, {2177, 1}, {1295, 1}, {2798, 1}, {2788, 1}}, time = 5, difficulty = 50},
       [6] = {item = 10092, skill = 30, storage = 606, mats = {{2677, 3}, {1685, 1}, {2013, 1}, {2015, 1}}, time = 5, difficulty = 60},
       [7] = {item = 4864, skill = 35, storage = 607, mats = {{4850, 1}, {2913, 1}, {2144, 1}}, time = 5, difficulty = 40}
     },
     message = "Crafting allows you to create ~"
   },
   maxSkill = 200,
   baseRecipeStorage = 50500,
   extraData = {},
}
--[CustomSkill]-- By: Athern
function Player.getCustomSkill(self, storage)
    return self:getStorageValue(storage)
end
function Player.addCustomSkill(self, skillName, storage)
    local skillStorage = math.max(10, self:getStorageValue(storage))
    local skillTries =  math.max(0, self:getStorageValue(storage + 1))
    self:setStorageValue(storage, skillStorage + 1)
    self:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You advanced to " .. string.lower(skillName) .. " level "..self:getCustomSkill(storage)..".")
    self:setStorageValue(storage + 1, 0)
end
function Player.addCustomSkillTry(self, skillName, storage)
    local skillStorage = math.max(10, self:getStorageValue(storage))
    local skillTries =  math.max(0, self:getStorageValue(storage + 1))
    self:setStorageValue(storage + 1, skillTries + 1)
    if skillTries > math.floor(20 * math.pow(1.1, (skillStorage - 11)) / 10) then
        self:addCustomSkill(skillName, storage)
    end
end
function Player.getCustomSkillPercent(self, storage)
    local skillStorage = math.max(10, self:getStorageValue(storage))
    local skillTries =  math.max(0, self:getStorageValue(storage + 1))
    local triesNeeded = math.floor(20 * math.pow(1.1, (skillStorage - 11)) / 10)
    local percent = math.floor(100 * (1 - skillTries / triesNeeded))
    if percent > 1 and percent <= 100 then
        return percent
    else
        percent = 1
        return percent
    end
end
--[/CustomSkill]--
