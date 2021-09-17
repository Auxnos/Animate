local Player = owner
local Mainpos = CFrame.new(0, 10, 0)
pcall(function()
    owner.SCPRemote:Destroy()
end)
do
    local FloppaRemote = Instance.new("RemoteEvent")
    FloppaRemote.Name = "SCPRemote"
    FloppaRemote.Parent = Player
    FloppaRemote.OnServerEvent:connect(function(plr, ...)
        local args = { ... }
        if args[1] == "Move" then
            Mainpos = args[2]
        elseif args[1] == "Moving" then
            if args[2] == true then
                for i,v in pairs(script:GetDescendants()) do
                    pcall(function()
                        v.Transparency = 1
                    end)
                end
            else
                for i,v in pairs(script:GetDescendants()) do
                    pcall(function()
                        v.Transparency = 0
                    end)
                end
            end
        end
    end)
    local ClientCode = [==[
    task.wait()
    script.Parent = nil
    task.wait()
    task.spawn(function()
        local function KeyDown(Key)
            return not game:GetService("UserInputService"):GetFocusedTextBox() and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode[Key]) or false
        end
        local What = false
        Mainpos = owner.Character.Head.CFrame
        local Mouse = owner:GetMouse()
        local Part = Instance.new("Part",workspace)
        Part.Anchored = true
        Part.Parent = nil
        local Locate = Instance.new("SelectionSphere",owner.PlayerGui)
        Locate.Adornee = Part
        local P = Mainpos
        local RayProperties = RaycastParams.new()
RayProperties.FilterType = Enum.RaycastFilterType.Blacklist
        while task.wait() do
        		local Closest,Rays,Ray_ = math.huge,{},nil
		table.insert(Rays,workspace:Raycast(P.Position-Vector3.new(0,1,0),Vector3.new(0,-9e9,0),RayProperties))
		for _,v in pairs(Rays) do
			local Magnitude = (P.Position-v.Position).Magnitude
			if Magnitude < Closest then
				Closest,Ray_ = Magnitude,v
			end
		end
		if Ray_ then
			P = CFrame.new(0,(Ray_.Position.Y-P.Y)+3,0)*P
		else
			local Base = nil
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("SpawnLocation") then
					Base = v
					break
				end
			end
			if Base then
				P = CFrame.new(Base.Position)*CFrame.new(0,(Base.Size.Y/2)+3,0)*P-P.Position
			else
				P = CFrame.new(0,100,0)*P-P.Position
			end
		end
		 if Mainpos ~= P then
            P = CFrame.new(Mainpos.p,Vector3.new(Mainpos.X+workspace.CurrentCamera.CFrame.LookVector.X,Mainpos.Y,Mainpos.Z+workspace.CurrentCamera.CFrame.LookVector.Z))
        end
		Mainpos = P
		
		            if KeyDown("W") then
                Mainpos = Mainpos * CFrame.new(0,0,-1)Moving = true
            end
            if KeyDown("S") then
                Mainpos = Mainpos *CFrame.new(0,0,1)Moving = true
            end
            if KeyDown("A") then
                Mainpos = Mainpos *CFrame.new(-1,0,0)Moving = true
            end
            if KeyDown("D") then
                Mainpos = Mainpos *CFrame.new(1,0,0)Moving = true
            end
            if not KeyDown("D") and not KeyDown("A") and not KeyDown("S") and not KeyDown("W") then
            Moving = false
            end
            owner.SCPRemote:FireServer("Moving",Moving)
        owner.SCPRemote:FireServer("Move",P)
        workspace.CurrentCamera.CameraSubject = workspace["SCP173".. owner.Name]:GetChildren()[1]
        RayProperties.FilterDescendantsInstances = {workspace["SCP173".. owner.Name]}
        end
    end)
    ]==]
    if #ClientCode > 1 then
        NLS(ClientCode,Player.PlayerGui)
    end
end
local mas = script
Model0 = Instance.new("Model")
MeshPart1 = Instance.new("MeshPart")
Motor6D2 = Instance.new("Motor6D")
MeshPart3 = Instance.new("MeshPart")
Motor6D4 = Instance.new("Motor6D")
MeshPart5 = Instance.new("MeshPart")
MeshPart6 = Instance.new("MeshPart")
Motor6D7 = Instance.new("Motor6D")
Part8 = Instance.new("Part")
SpecialMesh9 = Instance.new("SpecialMesh")
Part10 = Instance.new("Part")
SpecialMesh11 = Instance.new("SpecialMesh")
Part12 = Instance.new("Part")
SpecialMesh13 = Instance.new("SpecialMesh")
Part14 = Instance.new("Part")
SpecialMesh15 = Instance.new("SpecialMesh")
MeshPart16 = Instance.new("MeshPart")
Motor6D17 = Instance.new("Motor6D")
Motor6D18 = Instance.new("Motor6D")
Motor6D19 = Instance.new("Motor6D")
MeshPart20 = Instance.new("MeshPart")
Part21 = Instance.new("Part")
SpecialMesh22 = Instance.new("SpecialMesh")
Model0.Name = "SCP-939"
Model0.Parent = mas
MeshPart1.Name = "Right Leg"
MeshPart1.Parent = Model0
MeshPart1.CFrame = CFrame.new(2.38438416, -1.03568411, 3.20704651, 1, 0, 0, 0, 0, -1, 0, 1, 0)
MeshPart1.Orientation = Vector3.new(90, 0, 0)
MeshPart1.Position = Vector3.new(2.3843841552734, -1.0356841087341, 3.2070465087891)
MeshPart1.Rotation = Vector3.new(90, 0, 0)
MeshPart1.Color = Color3.new(0.533333, 0.243137, 0.243137)
MeshPart1.Size = Vector3.new(3.5723640918732, 3.1826100349426, 1.962072968483)
MeshPart1.BrickColor = BrickColor.new("Burgundy")
MeshPart1.Material = Enum.Material.Slate
MeshPart1.brickColor = BrickColor.new("Burgundy")
Motor6D2.Parent = MeshPart1
Motor6D2.C1 = CFrame.new(0.883270264, -0.383661866, -1.67128754, 0.258818984, 0.965925872, 0, 0, 0, -1, -0.965925872, 0.258818984, 0)
Motor6D2.Part0 = MeshPart1
Motor6D2.Part1 = Part21
Motor6D2.part1 = Part21
MeshPart3.Name = "cranium"
MeshPart3.Parent = Model0
MeshPart3.CFrame = CFrame.new(-0.00259399414, 0.567130804, -1.96336365, 1, 0, 0, 0, 0, -1, 0, 1, 0)
MeshPart3.Orientation = Vector3.new(90, 0, 0)
MeshPart3.Position = Vector3.new(-0.002593994140625, 0.56713080406189, -1.9633636474609)
MeshPart3.Rotation = Vector3.new(90, 0, 0)
MeshPart3.Color = Color3.new(0.533333, 0.243137, 0.243137)
MeshPart3.Size = Vector3.new(1.3693840503693, 2.7876899242401, 1.6452009677887)
MeshPart3.BrickColor = BrickColor.new("Burgundy")
MeshPart3.Material = Enum.Material.Slate
MeshPart3.brickColor = BrickColor.new("Burgundy")
Motor6D4.Parent = MeshPart3
Motor6D4.C1 = CFrame.new(-1.22070313, -0.00736951828, -0.0391464233, 0, 1, 0, 0, 0, -1, -1, 0, 0)
Motor6D4.Part0 = MeshPart3
Motor6D4.Part1 = Part14
Motor6D4.part1 = Part14
MeshPart5.Name = "Left Arm"
MeshPart5.Parent = Model0
MeshPart5.CFrame = CFrame.new(-2.49945068, -0.693849087, -2.23690796, 1, 0, 0, 0, 0, -1, 0, 1, 0)
MeshPart5.Orientation = Vector3.new(90, 0, 0)
MeshPart5.Position = Vector3.new(-2.4994506835938, -0.69384908676147, -2.2369079589844)
MeshPart5.Rotation = Vector3.new(90, 0, 0)
MeshPart5.Color = Color3.new(0.533333, 0.243137, 0.243137)
MeshPart5.Size = Vector3.new(3.4907250404358, 5.1229372024536, 2.8122339248657)
MeshPart5.BrickColor = BrickColor.new("Burgundy")
MeshPart5.Material = Enum.Material.Slate
MeshPart5.brickColor = BrickColor.new("Burgundy")
MeshPart6.Name = "Left Leg"
MeshPart6.Parent = Model0
MeshPart6.CFrame = CFrame.new(-2.38418579, -1.03568411, 3.18275452, 1, 0, 0, 0, 0, -1, 0, 1, 0)
MeshPart6.Orientation = Vector3.new(90, 0, 0)
MeshPart6.Position = Vector3.new(-2.3841857910156, -1.0356841087341, 3.1827545166016)
MeshPart6.Rotation = Vector3.new(90, 0, 0)
MeshPart6.Color = Color3.new(0.533333, 0.243137, 0.243137)
MeshPart6.Size = Vector3.new(3.5723640918732, 3.1826100349426, 1.962072968483)
MeshPart6.BrickColor = BrickColor.new("Burgundy")
MeshPart6.Material = Enum.Material.Slate
MeshPart6.brickColor = BrickColor.new("Burgundy")
Motor6D7.Parent = MeshPart6
Motor6D7.C1 = CFrame.new(-1.20569611, -0.383661866, -1.264328, 0.500000238, -0.866025388, 0, 0, 0, -1, 0.866025388, 0.500000238, 0)
Motor6D7.Part0 = MeshPart6
Motor6D7.Part1 = Part8
Motor6D7.part1 = Part8
Part8.Name = "a"
Part8.Parent = Model0
Part8.CFrame = CFrame.new(-0.686397314, -0.652022243, 2.77075529, 0.500000238, 0, 0.866025388, 0, 1, 0, -0.866025388, 0, 0.500000238)
Part8.Orientation = Vector3.new(0, 60, 0)
Part8.Position = Vector3.new(-0.68639731407166, -0.65202224254608, 2.7707552909851)
Part8.Rotation = Vector3.new(0, 60, 0)
Part8.Color = Color3.new(0.533333, 0.243137, 0.243137)
Part8.Size = Vector3.new(1.2300021648407, 0.87000012397766, 1.4800006151199)
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.BrickColor = BrickColor.new("Burgundy")
Part8.Material = Enum.Material.Slate
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.brickColor = BrickColor.new("Burgundy")
SpecialMesh9.Parent = Part8
SpecialMesh9.MeshType = Enum.MeshType.Sphere
Part10.Name = "d"
Part10.Parent = Model0
Part10.CFrame = CFrame.new(0.863000691, 0.230799466, -0.216171265, 0, 0.500000119, -0.866025209, 0, 0.866025209, 0.500000119, 1, 0, 0)
Part10.Orientation = Vector3.new(-30, -90, 0)
Part10.Position = Vector3.new(0.86300069093704, 0.23079946637154, -0.21617126464844)
Part10.Rotation = Vector3.new(-90, -60, -90)
Part10.Color = Color3.new(0.533333, 0.243137, 0.243137)
Part10.Size = Vector3.new(1.3700021505356, 1.0200002193451, 1.3100007772446)
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.BrickColor = BrickColor.new("Burgundy")
Part10.Material = Enum.Material.Slate
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.brickColor = BrickColor.new("Burgundy")
SpecialMesh11.Parent = Part10
SpecialMesh11.MeshType = Enum.MeshType.Sphere
Part12.Name = "b"
Part12.Parent = Model0
Part12.CFrame = CFrame.new(-0.773378313, 0.159530014, -0.138122559, 0, -0.258818984, -0.965925872, 0, 0.965925872, -0.258818984, 1, 0, 0)
Part12.Orientation = Vector3.new(15, -90, 0)
Part12.Position = Vector3.new(-0.77337831258774, 0.15953001379967, -0.13812255859375)
Part12.Rotation = Vector3.new(90, -75, 90)
Part12.Color = Color3.new(0.533333, 0.243137, 0.243137)
Part12.Size = Vector3.new(1.6300019025803, 1.0200002193451, 1.2100006341934)
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.BrickColor = BrickColor.new("Burgundy")
Part12.Material = Enum.Material.Slate
Part12.TopSurface = Enum.SurfaceType.Smooth
Part12.brickColor = BrickColor.new("Burgundy")
SpecialMesh13.Parent = Part12
SpecialMesh13.MeshType = Enum.MeshType.Sphere
Part14.Name = "c"
Part14.Parent = Model0
Part14.CFrame = CFrame.new(-0.0417404175, 0.574500322, -0.742660522, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Part14.Orientation = Vector3.new(0, -90, 0)
Part14.Position = Vector3.new(-0.041740417480469, 0.57450032234192, -0.74266052246094)
Part14.Rotation = Vector3.new(0, -90, 0)
Part14.Color = Color3.new(0.533333, 0.243137, 0.243137)
Part14.Size = Vector3.new(1.1400023698807, 1.4199999570847, 1.0600010156631)
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.BrickColor = BrickColor.new("Burgundy")
Part14.Material = Enum.Material.Slate
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.brickColor = BrickColor.new("Burgundy")
SpecialMesh15.Parent = Part14
SpecialMesh15.MeshType = Enum.MeshType.Sphere
MeshPart16.Name = "chest"
MeshPart16.Parent = Model0
MeshPart16.CFrame = CFrame.new(-0.00259399414, 0.492958784, 1.1880188, 1, 0, 0, 0, 0, -1, 0, 1, 0)
MeshPart16.Orientation = Vector3.new(90, 0, 0)
MeshPart16.Position = Vector3.new(-0.002593994140625, 0.49295878410339, 1.1880187988281)
MeshPart16.Rotation = Vector3.new(90, 0, 0)
MeshPart16.Color = Color3.new(0.533333, 0.243137, 0.243137)
MeshPart16.Size = Vector3.new(2.505980014801, 4.3078498840332, 3.2140100002289)
MeshPart16.BrickColor = BrickColor.new("Burgundy")
MeshPart16.Material = Enum.Material.Slate
MeshPart16.brickColor = BrickColor.new("Burgundy")
Motor6D17.Parent = MeshPart16
Motor6D17.C1 = CFrame.new(1.40419006, -0.205760941, 0.880706728, 0, 1, 0, 0.500000119, 0, -0.866025209, -0.866025209, 0, -0.500000119)
Motor6D17.Part0 = MeshPart16
Motor6D17.Part1 = Part10
Motor6D17.part1 = Part10
Motor6D18.Parent = MeshPart16
Motor6D18.C1 = CFrame.new(1.32614136, 0.122573853, -0.830818176, 0, 1, 0, -0.258818984, 0, -0.965925872, -0.965925872, 0, 0.258818984)
Motor6D18.Part0 = MeshPart16
Motor6D18.Part1 = Part12
Motor6D18.part1 = Part12
Motor6D19.Parent = MeshPart16
Motor6D19.C0 = CFrame.new(0, -2, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Motor6D19.C1 = CFrame.new(0, 1.15138245, 0.07417202, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Motor6D19.Part0 = MeshPart16
Motor6D19.Part1 = MeshPart3
Motor6D19.part1 = MeshPart3
MeshPart20.Name = "Right Arm"
MeshPart20.Parent = Model0
MeshPart20.CFrame = CFrame.new(2.49945068, -0.681156158, -2.21307373, 1, 0, 0, 0, 0, -1, 0, 1, 0)
MeshPart20.Orientation = Vector3.new(90, 0, 0)
MeshPart20.Position = Vector3.new(2.4994506835938, -0.68115615844727, -2.2130737304688)
MeshPart20.Rotation = Vector3.new(90, 0, 0)
MeshPart20.Color = Color3.new(0.533333, 0.243137, 0.243137)
MeshPart20.Size = Vector3.new(3.4907250404358, 5.1229372024536, 2.8122339248657)
MeshPart20.BrickColor = BrickColor.new("Burgundy")
MeshPart20.Material = Enum.Material.Slate
MeshPart20.brickColor = BrickColor.new("Burgundy")
Part21.Name = "e"
Part21.Parent = Model0
Part21.CFrame = CFrame.new(0.541437149, -0.652022243, 2.78643394, 0.258818984, 0, -0.965925872, 0, 1, 0, 0.965925872, 0, 0.258818984)
Part21.Orientation = Vector3.new(0, -75, 0)
Part21.Position = Vector3.new(0.54143714904785, -0.65202224254608, 2.7864339351654)
Part21.Rotation = Vector3.new(0, -75, 0)
Part21.Color = Color3.new(0.533333, 0.243137, 0.243137)
Part21.Size = Vector3.new(1.2300021648407, 0.87000012397766, 1.4800006151199)
Part21.BottomSurface = Enum.SurfaceType.Smooth
Part21.BrickColor = BrickColor.new("Burgundy")
Part21.Material = Enum.Material.Slate
Part21.TopSurface = Enum.SurfaceType.Smooth
Part21.brickColor = BrickColor.new("Burgundy")
SpecialMesh22.Parent = Part21
SpecialMesh22.MeshType = Enum.MeshType.Sphere
local CFrames = {}
for i,v in pairs(mas:GetChildren()) do
    if v:IsA("BasePart") == true then
        CFrames[v.Name] = v.CFrame
        end
end
function Refit()
    script:ClearAllChildren()
    Model0 = Instance.new("Model")
    MeshPart1 = Instance.new("MeshPart")
    Motor6D2 = Instance.new("Motor6D")
    MeshPart3 = Instance.new("MeshPart")
    Motor6D4 = Instance.new("Motor6D")
    MeshPart5 = Instance.new("MeshPart")
    MeshPart6 = Instance.new("MeshPart")
    Motor6D7 = Instance.new("Motor6D")
    Part8 = Instance.new("Part")
    SpecialMesh9 = Instance.new("SpecialMesh")
    Part10 = Instance.new("Part")
    SpecialMesh11 = Instance.new("SpecialMesh")
    Part12 = Instance.new("Part")
    SpecialMesh13 = Instance.new("SpecialMesh")
    Part14 = Instance.new("Part")
    SpecialMesh15 = Instance.new("SpecialMesh")
    MeshPart16 = Instance.new("MeshPart")
    Motor6D17 = Instance.new("Motor6D")
    Motor6D18 = Instance.new("Motor6D")
    Motor6D19 = Instance.new("Motor6D")
    MeshPart20 = Instance.new("MeshPart")
    Part21 = Instance.new("Part")
    SpecialMesh22 = Instance.new("SpecialMesh")
    Model0.Name = "SCP-939"
    Model0.Parent = mas
    MeshPart1.Name = "Right Leg"
    MeshPart1.Parent = Model0
    MeshPart1.CFrame = CFrame.new(2.38438416, -1.03568411, 3.20704651, 1, 0, 0, 0, 0, -1, 0, 1, 0)
    MeshPart1.Orientation = Vector3.new(90, 0, 0)
    MeshPart1.Position = Vector3.new(2.3843841552734, -1.0356841087341, 3.2070465087891)
    MeshPart1.Rotation = Vector3.new(90, 0, 0)
    MeshPart1.Color = Color3.new(0.533333, 0.243137, 0.243137)
    MeshPart1.Size = Vector3.new(3.5723640918732, 3.1826100349426, 1.962072968483)
    MeshPart1.BrickColor = BrickColor.new("Burgundy")
    MeshPart1.Material = Enum.Material.Slate
    MeshPart1.brickColor = BrickColor.new("Burgundy")
    Motor6D2.Parent = MeshPart1
    Motor6D2.C1 = CFrame.new(0.883270264, -0.383661866, -1.67128754, 0.258818984, 0.965925872, 0, 0, 0, -1, -0.965925872, 0.258818984, 0)
    Motor6D2.Part0 = MeshPart1
    Motor6D2.Part1 = Part21
    Motor6D2.part1 = Part21
    MeshPart3.Name = "cranium"
    MeshPart3.Parent = Model0
    MeshPart3.CFrame = CFrame.new(-0.00259399414, 0.567130804, -1.96336365, 1, 0, 0, 0, 0, -1, 0, 1, 0)
    MeshPart3.Orientation = Vector3.new(90, 0, 0)
    MeshPart3.Position = Vector3.new(-0.002593994140625, 0.56713080406189, -1.9633636474609)
    MeshPart3.Rotation = Vector3.new(90, 0, 0)
    MeshPart3.Color = Color3.new(0.533333, 0.243137, 0.243137)
    MeshPart3.Size = Vector3.new(1.3693840503693, 2.7876899242401, 1.6452009677887)
    MeshPart3.BrickColor = BrickColor.new("Burgundy")
    MeshPart3.Material = Enum.Material.Slate
    MeshPart3.brickColor = BrickColor.new("Burgundy")
    Motor6D4.Parent = MeshPart3
    Motor6D4.C1 = CFrame.new(-1.22070313, -0.00736951828, -0.0391464233, 0, 1, 0, 0, 0, -1, -1, 0, 0)
    Motor6D4.Part0 = MeshPart3
    Motor6D4.Part1 = Part14
    Motor6D4.part1 = Part14
    MeshPart5.Name = "Left Arm"
    MeshPart5.Parent = Model0
    MeshPart5.CFrame = CFrame.new(-2.49945068, -0.693849087, -2.23690796, 1, 0, 0, 0, 0, -1, 0, 1, 0)
    MeshPart5.Orientation = Vector3.new(90, 0, 0)
    MeshPart5.Position = Vector3.new(-2.4994506835938, -0.69384908676147, -2.2369079589844)
    MeshPart5.Rotation = Vector3.new(90, 0, 0)
    MeshPart5.Color = Color3.new(0.533333, 0.243137, 0.243137)
    MeshPart5.Size = Vector3.new(3.4907250404358, 5.1229372024536, 2.8122339248657)
    MeshPart5.BrickColor = BrickColor.new("Burgundy")
    MeshPart5.Material = Enum.Material.Slate
    MeshPart5.brickColor = BrickColor.new("Burgundy")
    MeshPart6.Name = "Left Leg"
    MeshPart6.Parent = Model0
    MeshPart6.CFrame = CFrame.new(-2.38418579, -1.03568411, 3.18275452, 1, 0, 0, 0, 0, -1, 0, 1, 0)
    MeshPart6.Orientation = Vector3.new(90, 0, 0)
    MeshPart6.Position = Vector3.new(-2.3841857910156, -1.0356841087341, 3.1827545166016)
    MeshPart6.Rotation = Vector3.new(90, 0, 0)
    MeshPart6.Color = Color3.new(0.533333, 0.243137, 0.243137)
    MeshPart6.Size = Vector3.new(3.5723640918732, 3.1826100349426, 1.962072968483)
    MeshPart6.BrickColor = BrickColor.new("Burgundy")
    MeshPart6.Material = Enum.Material.Slate
    MeshPart6.brickColor = BrickColor.new("Burgundy")
    Motor6D7.Parent = MeshPart6
    Motor6D7.C1 = CFrame.new(-1.20569611, -0.383661866, -1.264328, 0.500000238, -0.866025388, 0, 0, 0, -1, 0.866025388, 0.500000238, 0)
    Motor6D7.Part0 = MeshPart6
    Motor6D7.Part1 = Part8
    Motor6D7.part1 = Part8
    Part8.Name = "a"
    Part8.Parent = Model0
    Part8.CFrame = CFrame.new(-0.686397314, -0.652022243, 2.77075529, 0.500000238, 0, 0.866025388, 0, 1, 0, -0.866025388, 0, 0.500000238)
    Part8.Orientation = Vector3.new(0, 60, 0)
    Part8.Position = Vector3.new(-0.68639731407166, -0.65202224254608, 2.7707552909851)
    Part8.Rotation = Vector3.new(0, 60, 0)
    Part8.Color = Color3.new(0.533333, 0.243137, 0.243137)
    Part8.Size = Vector3.new(1.2300021648407, 0.87000012397766, 1.4800006151199)
    Part8.BottomSurface = Enum.SurfaceType.Smooth
    Part8.BrickColor = BrickColor.new("Burgundy")
    Part8.Material = Enum.Material.Slate
    Part8.TopSurface = Enum.SurfaceType.Smooth
    Part8.brickColor = BrickColor.new("Burgundy")
    SpecialMesh9.Parent = Part8
    SpecialMesh9.MeshType = Enum.MeshType.Sphere
    Part10.Name = "d"
    Part10.Parent = Model0
    Part10.CFrame = CFrame.new(0.863000691, 0.230799466, -0.216171265, 0, 0.500000119, -0.866025209, 0, 0.866025209, 0.500000119, 1, 0, 0)
    Part10.Orientation = Vector3.new(-30, -90, 0)
    Part10.Position = Vector3.new(0.86300069093704, 0.23079946637154, -0.21617126464844)
    Part10.Rotation = Vector3.new(-90, -60, -90)
    Part10.Color = Color3.new(0.533333, 0.243137, 0.243137)
    Part10.Size = Vector3.new(1.3700021505356, 1.0200002193451, 1.3100007772446)
    Part10.BottomSurface = Enum.SurfaceType.Smooth
    Part10.BrickColor = BrickColor.new("Burgundy")
    Part10.Material = Enum.Material.Slate
    Part10.TopSurface = Enum.SurfaceType.Smooth
    Part10.brickColor = BrickColor.new("Burgundy")
    SpecialMesh11.Parent = Part10
    SpecialMesh11.MeshType = Enum.MeshType.Sphere
    Part12.Name = "b"
    Part12.Parent = Model0
    Part12.CFrame = CFrame.new(-0.773378313, 0.159530014, -0.138122559, 0, -0.258818984, -0.965925872, 0, 0.965925872, -0.258818984, 1, 0, 0)
    Part12.Orientation = Vector3.new(15, -90, 0)
    Part12.Position = Vector3.new(-0.77337831258774, 0.15953001379967, -0.13812255859375)
    Part12.Rotation = Vector3.new(90, -75, 90)
    Part12.Color = Color3.new(0.533333, 0.243137, 0.243137)
    Part12.Size = Vector3.new(1.6300019025803, 1.0200002193451, 1.2100006341934)
    Part12.BottomSurface = Enum.SurfaceType.Smooth
    Part12.BrickColor = BrickColor.new("Burgundy")
    Part12.Material = Enum.Material.Slate
    Part12.TopSurface = Enum.SurfaceType.Smooth
    Part12.brickColor = BrickColor.new("Burgundy")
    SpecialMesh13.Parent = Part12
    SpecialMesh13.MeshType = Enum.MeshType.Sphere
    Part14.Name = "c"
    Part14.Parent = Model0
    Part14.CFrame = CFrame.new(-0.0417404175, 0.574500322, -0.742660522, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    Part14.Orientation = Vector3.new(0, -90, 0)
    Part14.Position = Vector3.new(-0.041740417480469, 0.57450032234192, -0.74266052246094)
    Part14.Rotation = Vector3.new(0, -90, 0)
    Part14.Color = Color3.new(0.533333, 0.243137, 0.243137)
    Part14.Size = Vector3.new(1.1400023698807, 1.4199999570847, 1.0600010156631)
    Part14.BottomSurface = Enum.SurfaceType.Smooth
    Part14.BrickColor = BrickColor.new("Burgundy")
    Part14.Material = Enum.Material.Slate
    Part14.TopSurface = Enum.SurfaceType.Smooth
    Part14.brickColor = BrickColor.new("Burgundy")
    SpecialMesh15.Parent = Part14
    SpecialMesh15.MeshType = Enum.MeshType.Sphere
    MeshPart16.Name = "chest"
    MeshPart16.Parent = Model0
    MeshPart16.CFrame = CFrame.new(-0.00259399414, 0.492958784, 1.1880188, 1, 0, 0, 0, 0, -1, 0, 1, 0)
    MeshPart16.Orientation = Vector3.new(90, 0, 0)
    MeshPart16.Position = Vector3.new(-0.002593994140625, 0.49295878410339, 1.1880187988281)
    MeshPart16.Rotation = Vector3.new(90, 0, 0)
    MeshPart16.Color = Color3.new(0.533333, 0.243137, 0.243137)
    MeshPart16.Size = Vector3.new(2.505980014801, 4.3078498840332, 3.2140100002289)
    MeshPart16.BrickColor = BrickColor.new("Burgundy")
    MeshPart16.Material = Enum.Material.Slate
    MeshPart16.brickColor = BrickColor.new("Burgundy")
    Motor6D17.Parent = MeshPart16
    Motor6D17.C1 = CFrame.new(1.40419006, -0.205760941, 0.880706728, 0, 1, 0, 0.500000119, 0, -0.866025209, -0.866025209, 0, -0.500000119)
    Motor6D17.Part0 = MeshPart16
    Motor6D17.Part1 = Part10
    Motor6D17.part1 = Part10
    Motor6D18.Parent = MeshPart16
    Motor6D18.C1 = CFrame.new(1.32614136, 0.122573853, -0.830818176, 0, 1, 0, -0.258818984, 0, -0.965925872, -0.965925872, 0, 0.258818984)
    Motor6D18.Part0 = MeshPart16
    Motor6D18.Part1 = Part12
    Motor6D18.part1 = Part12
    Motor6D19.Parent = MeshPart16
    Motor6D19.C0 = CFrame.new(0, -2, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Motor6D19.C1 = CFrame.new(0, 1.15138245, 0.07417202, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Motor6D19.Part0 = MeshPart16
    Motor6D19.Part1 = MeshPart3
    Motor6D19.part1 = MeshPart3
    MeshPart20.Name = "Right Arm"
    MeshPart20.Parent = Model0
    MeshPart20.CFrame = CFrame.new(2.49945068, -0.681156158, -2.21307373, 1, 0, 0, 0, 0, -1, 0, 1, 0)
    MeshPart20.Orientation = Vector3.new(90, 0, 0)
    MeshPart20.Position = Vector3.new(2.4994506835938, -0.68115615844727, -2.2130737304688)
    MeshPart20.Rotation = Vector3.new(90, 0, 0)
    MeshPart20.Color = Color3.new(0.533333, 0.243137, 0.243137)
    MeshPart20.Size = Vector3.new(3.4907250404358, 5.1229372024536, 2.8122339248657)
    MeshPart20.BrickColor = BrickColor.new("Burgundy")
    MeshPart20.Material = Enum.Material.Slate
    MeshPart20.brickColor = BrickColor.new("Burgundy")
    Part21.Name = "e"
    Part21.Parent = Model0
    Part21.CFrame = CFrame.new(0.541437149, -0.652022243, 2.78643394, 0.258818984, 0, -0.965925872, 0, 1, 0, 0.965925872, 0, 0.258818984)
    Part21.Orientation = Vector3.new(0, -75, 0)
    Part21.Position = Vector3.new(0.54143714904785, -0.65202224254608, 2.7864339351654)
    Part21.Rotation = Vector3.new(0, -75, 0)
    Part21.Color = Color3.new(0.533333, 0.243137, 0.243137)
    Part21.Size = Vector3.new(1.2300021648407, 0.87000012397766, 1.4800006151199)
    Part21.BottomSurface = Enum.SurfaceType.Smooth
    Part21.BrickColor = BrickColor.new("Burgundy")
    Part21.Material = Enum.Material.Slate
    Part21.TopSurface = Enum.SurfaceType.Smooth
    Part21.brickColor = BrickColor.new("Burgundy")
    SpecialMesh22.Parent = Part21
    SpecialMesh22.MeshType = Enum.MeshType.Sphere
end
script.DescendantRemoving:Connect(function()
    Refit()
end)
function checkregion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(Region3.new(point-Vector3.new(1,1,1)*range/2,point+Vector3.new(1,1,1)*range/2),ignore,math.huge)
end
script.Name = "SCP173".. Player.Name
wait(1)
while task.wait() do
    mas = script
    for i,v in pairs(mas:GetChildren()) do
        pcall(function()
            if v:IsA("BasePart") == true then
                v.CFrame = Mainpos*CFrames[v.Name]
            end
        end)
    end
    if Player.Character then
        Player.Character = nil
    end
end
