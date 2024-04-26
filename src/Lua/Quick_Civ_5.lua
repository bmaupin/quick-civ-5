function CanCityConstructBuilding(playerID, cityID, buildingID)
    local player = Players[playerID]
    local city = player:GetCityByID(cityID)

    if (PreGame.GetGameOption("GAMEOPTION_NO_ESPIONAGE") == 1) then
        -- Buildings
        if buildingID == GameInfoTypes.BUILDING_CONSTABLE then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_POLICE_STATION then
            return false

        -- Wonders
        elseif buildingID == GameInfoTypes.BUILDING_GREAT_FIREWALL then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_INTELLIGENCE_AGENCY then
            return false
        end
    end

    if (PreGame.GetGameOption("GAMEOPTION_NO_HAPPINESS") == 1) then
        -- Buildings
        if buildingID == GameInfoTypes.BUILDING_CIRCUS then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_COLOSSEUM then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_COURTHOUSE then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_STADIUM then
            return false

        -- Wonders
        elseif buildingID == GameInfoTypes.BUILDING_CHICHEN_ITZA then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_CIRCUS_MAXIMUS then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_PRORA_RESORT then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_TAJ_MAHAL then
            return false
        end
    end

    if (PreGame.GetGameOption("GAMEOPTION_NO_RELIGION") == 1) then
        -- Buildings
        if buildingID == GameInfoTypes.BUILDING_MUD_PYRAMID_MOSQUE then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_SHRINE then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_TEMPLE then
            return false

        -- Wonders
        elseif buildingID == GameInfoTypes.BUILDING_BOROBUDUR then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_GRAND_TEMPLE then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_HAGIA_SOPHIA then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_MOSQUE_OF_DJENNE then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_STONEHENGE then
            return false
        end
    end

    if (PreGame.GetGameOption("GAMEOPTION_NO_SCIENCE") == 1) then
        -- Buildings
        if buildingID == GameInfoTypes.BUILDING_LABORATORY then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_LIBRARY then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_OBSERVATORY then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_PAPER_MAKER then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_ROYAL_LIBRARY then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_UNIVERSITY then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_THEATRE then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_WAT then
            return false

        -- Wonders
        elseif buildingID == GameInfoTypes.BUILDING_GREAT_LIBRARY then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_HUBBLE then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_INTERNATIONAL_SPACE_STATION then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_NATIONAL_COLLEGE then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_OXFORD_UNIVERSITY then
            return false
        elseif buildingID == GameInfoTypes.BUILDING_PORCELAIN_TOWER then
            return false
        end
    end

    if (PreGame.GetGameOption("GAMEOPTION_NO_HAPPINESS") == 1 and
        PreGame.GetGameOption("GAMEOPTION_NO_RELIGION") == 1) then
        if buildingID == GameInfoTypes.BUILDING_BURIAL_TOMB then
            return false
        end
    end

    if (PreGame.GetGameOption("GAMEOPTION_NO_RELIGION") == 1 and
        PreGame.GetGameOption("GAMEOPTION_NO_SCIENCE") == 1) then
        if buildingID == GameInfoTypes.BUILDING_PYRAMID then
            return false
        end
    end

    return true
end

GameEvents.CityCanConstruct.Add(CanCityConstructBuilding)
