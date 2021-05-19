Garaje = createMarker ( 1578, -1620, 12.5,"cylinder",  1.6, 43, 139, 194 , 245  )
NombreOficial = getPlayerName(localPlayer)

ventanaP = guiCreateWindow(344, 215, 613, 360, "Autos Policial", false)
guiWindowSetSizable(ventanaP, false)

buttonCerrar = guiCreateButton(565, 317, 30, 32, "X", false, ventanaP)
guiSetFont(buttonCerrar, "default-bold-small")
guiSetProperty(buttonCerrar, "NormalTextColour", "FFFF0505")

labelOficial = guiCreateLabel(10, 24, 217, 19, "Oficial : "..NombreOficial.."", false, ventanaP)
guiSetFont(labelOficial, "default-bold-small")


labelS = guiCreateLabel(392, 24, 217, 19, "Los Santos Police Departament.", false, ventanaP)
guiSetFont(labelS, "default-bold-small")

bottonPatrulla = guiCreateButton(10, 63, 119, 45, "Patrulla", false, ventanaP)
guiSetFont(bottonPatrulla, "default-bold-small")

bottonRancher = guiCreateButton(217, 63, 119, 45, "Police Ranger", false, ventanaP)
guiSetFont(bottonRancher, "default-bold-small")

bottonMary = guiCreateButton(425, 63, 119, 45, "HPV1000 Mary", false, ventanaP)
guiSetFont(bottonMary, "default-bold-small")

buttonEnforce = guiCreateButton(10, 188, 119, 45, "Enforcer", false, ventanaP)
guiSetFont(buttonEnforce, "default-bold-small")

bottonSwat = guiCreateButton(217, 188, 119, 45, "S.W.A.T.", false, ventanaP)
guiSetFont(bottonSwat, "default-bold-small")

bottonPatriot = guiCreateButton(425, 188, 119, 45, "Patriot", false, ventanaP)
guiSetFont(bottonPatriot, "default-bold-small")

visiPolicia = guiSetVisible(ventanaP,false)

function CrearVentanaPolicia(hitPlayer)
    if guiGetVisible(ventanaP) ~= visiPolicia then
        guiSetVisible(ventanaP,true)
        showCursor(true)
    else
            guiSetVisible(ventanaP,false)
            showCursor(false)
   end
  end
addEventHandler("onClientMarkerHit",Garaje,CrearVentanaPolicia)

function CerrarPolicia(hitPlayer)

            guiSetVisible(ventanaP,false)
            showCursor(false)
   end

addEventHandler("onClientMarkerLeave",Garaje,CerrarPolicia)


function CerrarVentanaP()
    guiSetVisible(ventanaP,false)
    showCursor(false)
end
addEventHandler("onClientGUIClick",buttonCerrar,CerrarVentanaP,false)

function CrearPatrulla()
		triggerServerEvent ("onBotonPatrulla",localPlayer)
		end
addEventHandler("onClientGUIClick",bottonPatrulla,CrearPatrulla,false)


function CrearRanger()
		triggerServerEvent ("onBotonRanger",localPlayer)
		end
addEventHandler("onClientGUIClick",bottonRancher,CrearRanger,false)


function CrearMary()
		triggerServerEvent ("onBotonMary",localPlayer)
		end
addEventHandler("onClientGUIClick",bottonMary,CrearMary,false)


function CrearEnforc()
		triggerServerEvent ("onBotonEnforce",localPlayer)
		end
addEventHandler("onClientGUIClick",buttonEnforce,CrearEnforc,false)

function CrearSWAT()
		triggerServerEvent ("onBotonswat",localPlayer)
		end
addEventHandler("onClientGUIClick",bottonSwat,CrearSWAT,false)

function CrearPatriot()
		triggerServerEvent ("onBotonPatriot",localPlayer)
		end
addEventHandler("onClientGUIClick",bottonPatriot,CrearPatriot,false)


