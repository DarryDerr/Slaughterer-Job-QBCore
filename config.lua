Config = {}

Config.Interaction = false -- Only Support 'ult-textui-2' if true

------------------CONFIG----------------------
Config.ChickenCoords = vector3(-68.425, 6248.42, 31.194) -- Catch Chicken

----------------------------------------------
Config.ProcessingCoords = vector3(-96.007, 6206.92, 31.02) -- Processing Coords

----------------------------------------------
Config.PackingCoords = vector3(-104.20, 6206.45, 31.02) -- Packing Coords

----------------------------------------------
Config.SlaughterBlip = {
    Blip = {
        Enable = true,
        Name = "JOB: Chicken Slaughterer",
        Sprite = 683, -- icon blip, bisa ganti sesuai selera
        Color = 47, -- warna blip
        Scale = 0.8,
        Coord = vector3(-74.41, 6238.38, 31.08) -- ganti sesuai lokasi map yang kamu mau
    }
}