
local rf = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local win = rf:CreateWindow({
   Name = "HYPERION",
   Icon = 0,
   LoadingTitle = "version 2.2",
   LoadingSubtitle = "100% skidded",
   Theme = "Default"
})
local tab1 = win:CreateTab("abuser", 4483362458)
local tab2 = win:CreateTab("protect", 4483362458)
local tab3 = win:CreateTab("spammer", 4483362458)
local tab7 = win:CreateTab("events", 4483362458)
local tab8 = win:CreateTab("spy chat", 4483362458)
local tab4 = win:CreateTab("antis", 4483362458)
local tab9 = win:CreateTab("search gears", 4483362458)
local tab5 = win:CreateTab("others", 4483362458)
local tab6 = win:CreateTab("updates", 4483362458)


local function noti(a, b, c)
    rf:Notify({
        Title = a,
        Content = b,
        Duration = c
    })
end

noti("WARNING", "you need the ArkenStone.", 2)
noti("notice!!!", "this script is now auto updated by loadstring!!!!!!", 5)


-- vars here
local chat = game:GetService("TextChatService").TextChannels.RBXSystem
local chatG = game:GetService("TextChatService").TextChannels.RBXGeneral
local rs = game:GetService("RunService")
local plrs = game:GetService("Players")
local localplr = plrs.LocalPlayer
local frame = 1
local afreeze = false
local ablind = false
local whitelisted = {}
local isWhitelist = false
local sa = false
local cmdsOnce = {";delcubes a", ";fog nan", ";delclones a", ";maptide nan", ";oof a", ";mapsize 0", ";seatide nan", ";seasize nan", ";oof a", ";colorless", ";myopic o", ";fog nan"}
local cmds = {";reset me", ";clearinv o", ";reset me", ";freeze o", ";reset me", ";blind o", ";reset me", ";mute o", ";reset me", ";reset me"}
local rc = false
local heart = false
local bomb = false
local enli = false
local spam = false
local subp = false
local mines = false
local spamW = 1
local spamV = false
local spamT = {}
local hypW = {"ŗ<ล<ἱ<ɗ<e<ɗ b<〪ỵ h<ỵ<p<e<ŗ<ἱ<о<ท", " g<et〪 h<ỵ<p<e<ŗ<ἱ<о<ท ล<t〪 ร<с〪<ŗ<ἱ<p<t<〪b<〪ӏ<о<x", " #ј<о<ἱ<ท h<ỵ<p<e<ŗ<ἱ<о<ท"}
local hyp = {"f<〪xลq", "p<บvŗ", "x<ɱqf", "g<ỵp〪", "ค<f〪gศ", "ทf<ⴭบ", "q<gxร", "p<vxf", "ล<gf<ɱ", "gx<f〪p", "p<xv〪", "hx<fg", "v<ลb〪q", "f<qล<x", "b<f〪p<q"}
local hyp1 = {"x<gpv", "ร<f〪pq", "f<qgx", "pv<fg", "g<xb〪p", "v<pg<x", "x<pv〪", "p<ลg<x", "qf<ⴭร", "f<gv<q", "gx<vf", "vf<xล", "รx<pg", "g<ลf<q", "xb〪<fp"}
local OnJoinedAge = 0
local OnJoinedV = false
local OnJoinedT = {}
local aflash = false
local spy = {
    isSpy = false,
    onlyOthers = false,
    onlyLocal = false,
    blockEnabled = false,
    blocknum = 0,
    blockTable = {}
}
local search = {
    clipboard = true,
    chat = true
}
local OnJoinedB = {"f<〪xลq"}
--
rs.RenderStepped:Connect(function(v)
   frame = v
end)

if not (game.PlaceId == 11137575513 or game.PlaceId == 12943247001 or game.PlaceId == 12943245078) then
   noti("invaild game", "if you get banned for spam it is not my fault.", 10)
end

task.spawn(function()
   for _, plr in pairs(plrs:GetPlayers()) do
      if plr.Name == "A_A1useHyperionFr" and plr.Name ~= localplr then
            noti("owner of hyp found!", "sup.", 2)
            break
      end
   end
end)

tab1:CreateParagraph({
    Title = "Server abuser (info)",
    Content = "you need The ArkenStone for this, removed lag server because it is not effective."
})

tab1:CreateToggle({
    Name = "server abuser",
    CurrentValue = false,
    Callback = function(v)
       sa = v
       if sa then
          for i = 1, #cmdsOnce do
             task.wait(0.05)
             chat:SendAsync(cmdsOnce[i] ..  " HPERION")
          end
          task.spawn(function()
             while sa do
                for i = 1, #cmds do
                   task.wait(0.05)
                   chat:SendAsync(cmds[i])
                end
             end
          end)
       end
    end
})
tab1:CreateParagraph({
    Title = "advertise (info)",
    Content = "pls advertise hyperion ]:"
})
tab1:CreateButton({
   Name = "advertise hyperion",
   Callback = function()
      if not sa then
         hypW[1] = "#ј<о<ἱ<ท h<ỵ<p<e<ŗ<ἱ<о<ท"
      elseif sa then
         hypW[1] = "ŗ<ล<ἱ<ɗ<e<ɗ b<〪ỵ h<ỵ<p<e<ŗ<ἱ<о<ท"
      end
      for i = 1, #hypW do
           task.wait(0.3 + math.random(0.1, 0.5))
         chatG:SendAsync(";[" .. hyp[math.random(#hyp)] .. hyp1[math.random(#hyp1)] .. "]" .. hypW[i])
      end
   end
})
tab1:CreateParagraph({
    Title = "flashbang (info)",
    Content = "makes screen white, may not work."
})
tab1:CreateButton({
   Name = "flashbang glitch",
   Callback = function()
      chat:SendAsync(";flashbang")
      task.wait(2)
      for _,v in pairs(localplr.Backpack:GetChildren()) do 
         if v.Name=="Flashbang" then
            v.Parent=localplr.Character task.wait(0.1) v:Activate() 
            break 
         end
      end
      task.wait(2)
      task.spawn(function()
         while not localplr:WaitForChild("PlayerGui"):WaitForChild("GuiMain"):FindFirstChild("FlashBangEffect") do
            task.wait()
         end
         chat:SendAsync(";debug")
      end)
   end
})
tab1:CreateParagraph({
    Title = "lag everyone",
    Content = " lags everyone (you too). do not oof/clearinv the target, this takes a while and spams gears so you cant do cmds temp"
})
lag = {
   plrName = "me",
   istrue = false
}

tab1:CreateToggle({
   Name = "lag server, 20k+ ping",
   CurrentValue = false,
   Callback = function(v)
      lag.istrue = v
      noti("wait a while", "you cannot do cmds while spamming gears on player", 4)
      task.spawn(function()
         for _ = 1, 150 do
            if not lag.istrue then break end
            task.wait(frame + 0.01)
            chat:SendAsync(";gear " .. lag.plrName .. " 18474459")
         end
         while lag.istrue do
            task.wait(frame + 0.001)
            chat:SendAsync(";r6 " .. lag.plrName)
         end
      end)
      task.spawn(function()
         for _, p in ipairs(plrs:GetPlayers()) do
            if p ~= localplr then
               local bp = p:FindFirstChild("Backpack")
               if bp then
                  for _, t in ipairs(bp:GetChildren()) do
                     if t.Name == "Advanced Paint Bucket" then
                        t:Destroy()
                     end
                  end
               end
            end
         end
      end)
   end
})
tab1:CreateInput({
    Name = "plrName",
    PlaceholderText = "spam gear on plrName",
    RemoveTextAfterFocusLost = false,
    Callback = function(v)
       lag.plrName = v
    end
})
tab1:CreateParagraph({
    Title = "abuse plr",
    Content = "freezes, jails.. etc"
})

tab1:CreateInput({
    Name = "plrName",
    PlaceholderText = "plrName",
    RemoveTextAfterFocusLost = true,
    Callback = function(v)
       local abuseplr = {"freeze", "jail", "glitch", "mute", "noclip"}
       for _, val in ipairs(abuseplr) do
          chat:SendAsync(";" .. val .. " " .. v)
          task.wait(0.1)
       end
    end
})





tab2:CreateSection("Whitelist")
tab2:CreateParagraph({
    Title = "whitelist (info)",
   Content = "it will clearinv players who are not whitelisted and that have the Arkenstone"
})
tab2:CreateButton({
    Name = "Show Enlightened",
    Callback = function()
        for _, plr in pairs(plrs:GetPlayers()) do
            if plr:GetAttribute("Arken") then
                noti("Enlightened", plr.Name .. " is enlightened", 3)
            end
        end
    end
})

tab2:CreateButton({
    Name = "Show whitelisted",
    Callback = function()
        for i = 1, #whitelisted do
           noti("whitelisted", whitelisted[i] .. " index: " .. i, 3)
        end
    end
})

tab2:CreateInput({
    Name = "Whitelist",
    PlaceholderText = "username",
    RemoveTextAfterFocusLost = true,
    Callback = function(v)
            for _, plr in pairs(plrs:GetPlayers()) do
                if plr.Name:lower():find(v:lower()) then
                    table.insert(whitelisted, plr.Name)
                    noti("Whitelisted", plr.Name .. " added to whitelist", 3)
                end
            end
        end
})

tab2:CreateInput({
    Name = "Unwhitelist",
    PlaceholderText = "username",
    RemoveTextAfterFocusLost = true,
    Callback = function(v)
            for i = #whitelisted, 1, -1 do
                if whitelisted[i]:lower():find(v:lower()) then
                    noti("Unwhitelisted", whitelisted[i] .. " removed", 3)
                   table.remove(whitelisted, i)
                end
            end
    end
})

for _, player in pairs(game:GetService("Players"):GetPlayers()) do
    if player:GetAttribute("Arken") or (player:FindFirstChild("Backpack") and player.Backpack:FindFirstChild("The Arkenstone")) then
        table.insert(whitelisted, player.Name)
       print(player.Name)
    end
end


tab2:CreateToggle({
    Name = "whitelist",
    CurrentValue = false,
    Callback = function(v)
        isWhitelist = v
       task.spawn(function()
          while isWhitelist do
             for _, plr in pairs(game:GetService("Players"):GetPlayers()) do
                if plr.Backpack and plr.Backpack:FindFirstChild("The Arkenstone") or (workspace:FindFirstChild(plr.Name) and workspace[plr.Name]:FindFirstChild("The Arkenstone")) then
                   local name = plr.Name:split("_")[1]
                   local isWhitelisted = false
                   for _, n in pairs(whitelisted) do
                      if name:lower():find(n:lower()) then
                         isWhitelisted = true
                         break
                      end
                   end
                   if not isWhitelisted then
                      for i = 1, 5 do
                         chat:SendAsync(";clearinv " .. name .. "  HYPERION")
                      end
                      noti("Auto clear", "cleared enlighten! " .. name, 2)
                   end
                end
             end
             task.wait(0.01)
          end
       end)
    end
})
tab2:CreateSection("remove enli")
local Rplr = ""
local Rtab = {"enlighten", "clearinv","enlighten", "clearinv" , "clearinv", "clearinv", "clearinv" }
tab2:CreateInput({
    Name = "remove enli (60/40 if exploiter)",
    PlaceholderText = "username",
    RemoveTextAfterFocusLost = true,
    Callback = function(v)
       Rplr = v
       task.spawn(function()
         for i, v in ipairs(Rtab) do
            task.wait(frame)
            chat:SendAsync(";" .. v .. " " .. Rplr)
         end
       end)
    end
})
if game:GetService("Workspace"):FindFirstChild("The Arkenstone") and game:GetService("Workspace"):FindFirstChild("The Arkenstone"):FindFirstChild("Handle") then
      for _ = 1, 3 do
         chat:SendAsync(";reset me HYPERION")
         task.wait(frame)
      end
   end
end)
tab2:CreateSection("Auto reset")
tab2:CreateToggle({
    Name = "Auto reset",
    CurrentValue = false,
    Callback = function(v)
       IsReset = v
    end
})

tab2:CreateSection("Auto debug")
rs.RenderStepped:Connect(function()
      if bomb and workspace:FindFirstChild("FuseBomb") then
        chat:SendAsync(";debug")
        noti("Auto Debug", "debuged, FuseBomb", 1)
      end
      if heart and workspace:FindFirstChild("Effect") then
        chat:SendAsync(";debug")
        noti("Auto Debug", "debuged, HeartAttack/Effect", 1)
      end
      if rc and workspace:FindFirstChild("Tank") then
        chat:SendAsync(";debug")
        noti("Auto Debug", "debuged, RcTank", 1)
      end
      if enli and workspace["The Arkenstone"]:FindFirstChild("Handle") then
        chat:SendAsync(";debug")
        noti("Auto Debug", "debuged, The Arkenstone", 1)
      end
      if subp and workspace:FindFirstChild("SubspaceTripmine") then
        chat:SendAsync(";debug")
        noti("Auto Debug", "debuged, Subspace", 1)
      end
      if mines and workspace:FindFirstChild("Mine") then
        chat:SendAsync(";debug")
        noti("Auto Debug", "debuged, Mines", 1)
      end
end)
tab2:CreateToggle({
    Name = "anti drop enli",
    CurrentValue = false,
    Callback = function(v)
        enli = v
    end,
})
tab2:CreateToggle({
    Name = "anti rctank",
    CurrentValue = false,
    Callback = function(v)
        rc = v
    end,
})
tab2:CreateToggle({
    Name = "anti Heart Attack",
    CurrentValue = false,
    Callback = function(v)
        heart = v
       noti("WARNING", "heart attck is named effect, other gears may trigger this.", 3)
    end,
})
tab2:CreateToggle({
    Name = "anti FuseBomb",
    CurrentValue = false,
    Callback = function(v)
        bomb = v
    end,
})
tab2:CreateToggle({
    Name = "anti subspace",
    CurrentValue = false,
    Callback = function(v)
        subp = v
    end,
})
tab2:CreateToggle({
    Name = "anti mines",
    CurrentValue = false,
    Callback = function(v)
        mines = v
    end,
})
tab3:CreateParagraph({
    Title = "spammer (warning)",
   Content = "do not add ';' i have already added it auto, if you add it ';' it will not work , input nil to remove a slot"
})

tab3:CreateToggle({
    Name = "spammer",
    CurrentValue = false,
    Callback = function(v)
       spamV = v
       task.spawn(function()
          pcall(function()
             while spamV do
                if #spamT > 0 then
                   for i, v in ipairs(spamT) do
                  task.wait(spamW)
                      chat:SendAsync(";" .. v .. " #HYPERION#SPAMMER#")
                   end
                end
             task.wait(0.01)
             end
          end)
       end)
    end
})

tab3:CreateSlider({
   Name = "Delay",
   Range = {0.01, 20},
   Increment = 0.001,
   CurrentValue = 0.1,
   Callback = function(val)
            spamW = val
   end
})
for i = 1, 5 do
    tab3:CreateInput({
        Name = "slot",
        PlaceholderText = "TextHere",
        RemoveTextAfterFocusLost = true,
        Callback = function(v)
            spamT[i] = (v ~= "nil" and v ~= "") and v or nil
        end
    })
end

tab4:CreateButton({
    Name = "fix vamp sword (humanoid health = 0 method)",
    Callback = function(v)
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
        localplr.Character.Humanoid.Health = 0
    end
})
tab4:CreateButton({
    Name = "anti flashbang",
    Callback = function(v)
       aflash = v
       task.spawn(function()
          while aflash do
             task.wait(0.1)
             pcall(function()
                localplr.PlayerGui.MainGui:FindFirstChild("FlashBangEffect"):Destroy()
             end)
          end
       end)
    end
})

tab4:CreateToggle({
   Name = "anti blind",
   CurrentValue = false,
   Callback = function(v)
      ablind = v
       task.spawn(function()
          while ablind do
             task.wait(0.1)
             if localplr:FindFirstChild("PlayerGui"):FindFirstChild("Blind") then
                localplr.PlayerGui.Blind:Destroy()
             end
          end
       end)
    end
})

tab4:CreateToggle({
    Name = "anti freeze",
    CurrentValue = false,
    Callback = function(v)
        afreeze = v
        task.spawn(function()
            while afreeze do
                task.wait(0.1)
                if localplr.Character:FindFirstChild("Hielo", true) then
                    localplr.Character:FindFirstChildOfClass("Humanoid").Health = 0
                end
            end
        end)
    end
})

tab5:CreateParagraph({
    Title = "others",
   Content = "other stuff that are cool."
})
tab5:CreateButton({
    Name = "ZTE copy",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/The-Chosen-One-Zte-hub-20603"))()
    end
})
tab5:CreateButton({
    Name = "ZTE run",
    Callback = function()
        setclipboard('loadstring(game:HttpGet("https://rawscripts.net/raw/The-Chosen-One-Zte-hub-20603"))()')
       noti("in clipboard", "", 1)
    end
})
tab5:CreateButton({
    Name = "LAZY run (isnt updated anymore)",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/FlavorYT/The-lazy-ONE/main/Made%20by%20leakz%20and%20EvilAlienWare"))()
   end
})
tab5:CreateButton({
    Name = "LAZY copy (isnt updated anymore)",
    Callback = function()
      setclipboard('loadstring(game:HttpGet("https://raw.githubusercontent.com/FlavorYT/The-lazy-ONE/main/Made%20by%20leakz%20and%20EvilAlienWare"))()')
       noti("in clipboard", "", 1)
   end
})

--[[
tab6:CreateParagraph({
    Title = "v 2",
   Content = ""
})
]]--
tab6:CreateParagraph({
    Title = "v1.6",
   Content = "changed stuff for better understanding. removed lag server, not effective. changed advertise hyperion" 
})
tab6:CreateParagraph({
    Title = "v 1.7",
   Content = "added remove enli"
}) 
tab6:CreateParagraph({
    Title = "v 2.0",
   Content = "added : spychat, lag everyone and events. "
})
tab6:CreateParagraph({
    Title = "v 2.2",
   Content = "added: search, abuse plr. fixed : clear enli"
})

tab7:CreateParagraph({
    Title = "On Player Join",
    Content = "Executes a command when a player joins. Format: ';[command] PlayerName'"
})


 tab7:CreateToggle({
    Name = "toggle",
    CurrentValue = false,
    Callback = function(v)
     OnJoinedV = v
    end
 })


plrs.PlayerAdded:Connect(function(plr)
   task.wait(2)
   if plr.AccountAge >= OnJoinedAge then
      if not next(OnJoinedB) then return end
      for i, v in ipairs(OnJoinedB) do
         if string.find(plr.Name, v) then return end
      end
      
      for i, v in ipairs(OnJoinedT) do
         task.wait(0.1)
         chat:SendAsync(";" .. v .. " " .. plr.Name:split("_")[1])
      end 
   end
end)

for i = 1, 5 do
    tab7:CreateInput({
        Name = "slot",
        PlaceholderText = "TextHere",
        RemoveTextAfterFocusLost = true,
        Callback = function(v)
             if v ~= "" then
                OnJoinedT[i] = v
             else
                OnJoinedT[i] = nil
             end
        end
    })
end
tab7:CreateParagraph({
    Title = "Blacklisted Keywords",
    Content = "If a player has a blacklisted keyword, the script will not execute the commands."
})

tab7:CreateInput({
    Name = "Insert Keywords",
    PlaceholderText = " ",
    RemoveTextAfterFocusLost = false,
    Callback = function(v)
        if v ~= "" then
            table.insert(OnJoinedB, v:lower())
           noti("added.", " ", 2)
        end
    end
})

tab7:CreateInput({
    Name = "remove keywords",
    PlaceholderText = "no msg = not found",
    RemoveTextAfterFocusLost = false,
    Callback = function(val)
       for i, v in ipairs(OnJoinedB) do
          if string.find(v, val:lower()) then
             table.remove(OnJoinedB, i)
             noti("removed", "keyword " .. v, 2)
             break
          end
       end
    end
})
   
tab7:CreateInput({
    Name = "age needed to run (days, 0 default)",
    PlaceholderText = "anti alts",
    RemoveTextAfterFocusLost = false,
    Callback = function(v)
       OnJoinedAge = v
    end
})

tab8:CreateToggle({
    Name = "spy chat",
    CurrentValue = spy.isSpy,
    Callback = function(v)
       spy.isSpy = v 
    end
})

tab8:CreateToggle({
    Name = "only other players msg",
    CurrentValue = spy.onlyOthers,
    Callback = function(v)
       spy.onlyOthers = v
    end
})

tab8:CreateToggle({
    Name = "only local player msg",
    CurrentValue = spy.onlyLocal,
    Callback = function(v)
       spy.onlyLocal = v
    end
})

tab8:CreateToggle({
    Name = "anti spam",
    CurrentValue = spy.blockEnabled,
    Callback = function(v) 
       spy.blockEnabled = v 
    end
})

tab8:CreateInput({
    Name = "block after same text",
    PlaceholderText = "insert num",
    RemoveTextAfterFocusLost = false,
    Callback = function(v)
        local num = tonumber(v)
        if num then
            spy.blocknum = num
        end
    end
})

local function onChatted(plr)
    plr.Chatted:Connect(function(msg)
        if not spy.isSpy then return end
        if not msg:find(";") then return end

        local show = true

        if spy.blockEnabled and spy.blocknum > 0 then
            spy.blockTable[plr.Name] = spy.blockTable[plr.Name] or {}
            local cnt = spy.blockTable[plr.Name][msg] or 0
            if cnt >= spy.blocknum then
                show = false
            else
                spy.blockTable[plr.Name][msg] = cnt + 1
            end
        end

        if not show then return end

        if spy.onlyLocal then
            show = (plr == localplr)
        elseif spy.onlyOthers then
            show = (plr ~= localplr)
        else
            show = true
        end

        if show then
            chatG:DisplaySystemMessage("[HYPERION SPY]: " .. plr.Name .. " | " .. msg)
        end
    end)
end

for _, player in ipairs(plrs:GetPlayers()) do
    onChatted(player)
end
plrs.PlayerAdded:Connect(onChatted)

-- chat gpt code btw
local HttpService = game:GetService("HttpService")
function searchfunc(v)
    if type(v) ~= "string" then return 0 end
    local r = http.request({Url="https://catalog.roproxy.com/v1/search/items/details?Category=11&Subcategory=5&Keyword="..HttpService:UrlEncode(v).."&Limit=30",Method="GET"})
    if not r or r.StatusCode ~= 200 or not r.Body then return 1 end
    local d = HttpService:JSONDecode(r.Body).data
    if not d then return 2 end
    local w = {}; for s in v:lower():gmatch("%S+") do w[#w+1]=s end
    for _,i in ipairs(d) do
        local h = ((i.name or "").." "..(i.description or "")):lower()
        local found = 0
        for _,s in ipairs(w) do
            if h:find(s, 1, true) then
                found = found + 1
            end
        end
        if found >= math.floor(#w * 0.6) then
            return i.id
        end
    end
    return 3
end
-- i did the rest ↓
tab9:CreateInput({
    Name = "search gear",
    PlaceholderText = "input gear name",
    RemoveTextAfterFocusLost = true,
    Callback = function(v)
       noti("searching...", "wait.", 2)
       iserror, func = pcall(function() return searchfunc(v) end)
       if func == 0 then
          noti("searcher", "not a string.", 2)
       elseif func == 1 then
       noti("searcher", "HTTP request error!", 2)
       elseif func == 2 then
          noti("searcher", "HTTP response invaild or missing!", 2)
       elseif func == 3 then
          noti("searcher", "failed to find/:", 2)
       else
          if search.clipboard then setclipboard(";gear me " .. func) end
          if search.chat then chat:SendAsync(";gear me " .. func) end
          noti("searcher", "done.", 2)
       end
    end
})

tab9:CreateToggle({
    Name = "setclipboard",
    CurrentValue = true,
    Callback = function(v)
        search.clipboard = v
    end
})

tab9:CreateToggle({
    Name = "chat msg",
    CurrentValue = true,
    Callback = function(v)
        search.chat = v
    end
})