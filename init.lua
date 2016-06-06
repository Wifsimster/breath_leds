print("Starting ESP"..node.chipid().."...")

if file.open("main.lua") ~= nil then
    print("Waiting 5 secs...")
    tmr.alarm(0, 5000, 1, function()
        print("Execute main.lua")
        dofile("main.lua")
    end)
else 
  print("main.lua doesn't exist !")
end
