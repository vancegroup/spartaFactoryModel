require "AddAppDirectory"
require "osgUtil"
AddAppDirectory()

runfile[[factorylighting.lua]]
factory_model = runfile[[Factory.lua]]
op = osgUtil.Optimizer()
op:optimize(factory_model,osgUtil.Optimizer.OptimizationOptions.ALL_OPTIMIZATIONS)
RelativeTo.World:addChild(factory_model)

runfile[[frameActionSwitcher.lua]]
runfile[[sound.lua]]
runfile[[Navigation_forklift.lua]]
runfile[[helpMenu_forklift.lua]]