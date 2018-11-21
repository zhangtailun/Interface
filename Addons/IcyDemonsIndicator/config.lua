local L = LibStub('AceLocale-3.0'):GetLocale('IcyDemonsIndicator')


local configTable = {
    name = L['IcyDemonsIndicator Settings'],
    type = 'group',
    args = {
        barWidth = {
            type='range',
            name=L['Bar Width'],
            order=20,
            min=50,
            max=500,
            step=1,
            bigStep=10,
            get=function(info) 
                return IcyDemonsIndicatorSettings.barWidth 
            end,
            set=function(info, val) 
                IcyDemonsIndicatorSettings.barWidth = val
                IcyDemonsIndicator:UpdateBarPoolPoints()
            end,
        },
        barHeight = {
            type='range',
            name=L['Bar Height'],
            order=30,
            min=10,
            max=50,
            step=1,
            bigStep=5,
            get=function(info) 
                return IcyDemonsIndicatorSettings.barHeight 
            end,
            set=function(info, val) 
                IcyDemonsIndicatorSettings.barHeight = val
                IcyDemonsIndicator:UpdateBarPoolPoints()
            end,
        },
        barGrow = {
            type='toggle',
            name=L['Growing Down'],
            order=40,
            get=function(info) 
                return IcyDemonsIndicatorSettings.barGrow == -1 
            end,
            set=function(info, val) 
                if val then 
                    IcyDemonsIndicatorSettings.barGrow = -1
                    IcyDemonsIndicatorSettings.barRelativePoint = 'TOPLEFT'
                    IcyDemonsIndicatorSettings.barPoint = 'TOPLEFT'
                else 
                    IcyDemonsIndicatorSettings.barGrow = 1
                    IcyDemonsIndicatorSettings.barRelativePoint = 'BOTTOMLEFT'
                    IcyDemonsIndicatorSettings.barPoint = 'BOTTOMLEFT'
                end
                IcyDemonsIndicator:UpdateBarPoolPoints()
            end
        },
        anchorToggle = {
            type='execute',
            name=L['Toggle Anchor'],
            order=0,
            func=function(info)
                if InCombatLockdown() then
                    DEFAULT_CHAT_FRAME:AddMessage(L['Please toggle anchor out of combat'])
                    return
                end
                if IcyDemonsIndicatorBarPoolFrame:IsShown() then
                    IcyDemonsIndicator:LockAllAnchors()
                else
                    IcyDemonsIndicator:UnlockAllAnchors()
                end
            end
        },
        reset = {
            type='execute',
            name=L['Reset (will RELOAD UI!)'],
            order=10,
            func=function(info)
                IcyDemonsIndicatorSettings = nil
                ReloadUI()
            end
        },
    },
}

LibStub('AceConfig-3.0'):RegisterOptionsTable('IcyDemonsIndicator', configTable, {'idi', 'icydemonsindicator'})
LibStub("AceConfigDialog-3.0"):AddToBlizOptions('IcyDemonsIndicator', 'IcyDemonsIndicator')
