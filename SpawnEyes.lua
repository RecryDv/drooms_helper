--!server
local Entities = game.ServerScriptService.Game.Directory.Entities
Entities = require(Entities)
			local number = math.random(1, 20)
			local num = math.random(1, 2)
			local lookmancloned = game.ServerScriptService.Server.Assets.Entities.Eyes:Clone()
			lookmancloned.Name = "EyesAreReady"
			local gamecode = game.Workspace.CurrentRooms.CurrentRoom.Value - 1
			local gamecode2 = game.Workspace.CurrentRooms.CurrentRoom.Value + 1
			lookmancloned.Parent = game.Workspace
			spawn(function()
				while lookmancloned ~= nil do
					task.wait()
					if num == 1 then
						lookmancloned.Core.CFrame = game.Workspace.CurrentRooms:FindFirstChild(gamecode).RoomStart.CFrame * CFrame.new(1, 1.5, -number)
						--lookmancloned:SetPrimaryPartCFrame(game.Workspace.CurrentRooms:FindFirstChild(gamecode).RoomStart.CFrame)
					elseif num == 2 then
						lookmancloned.Core.CFrame = game.Workspace.CurrentRooms:FindFirstChild(gamecode).RoomStart.CFrame * CFrame.new(1, 1.5, -number)
						--lookmancloned:SetPrimaryPartCFrame(game.Workspace.CurrentRooms:FindFirstChild(gamecode).RoomStart.CFrame)
					end
				end
			end)
			lookmancloned.Core.Attachment.TeleportShockwave:Emit(1)
			lookmancloned.Core.Attachment.TeleportEnd:Emit(1)
			
			task.delay(1.1, function()
				lookmancloned.Name = "Eyes"
				lookmancloned:SetAttribute("EyesDamage", true)
				lookmancloned.Core.Attachment.Eyes.Enabled = true
			end)
			
			lookmancloned.Core.Ambience:Play()
			lookmancloned.Core.Initiate:Play()
			lookmancloned.Core.Attachment.Spark.Enabled = true
			Entities:Lookman_Eyes(lookmancloned, gamecode2)
