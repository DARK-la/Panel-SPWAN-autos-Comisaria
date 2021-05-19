
function CrearPatrulla (Vehicle,_)
	local vehiculo = createVehicle ( 596, 1570, -1628, 13, 0, 0,87.757385253906)
	  warpPedIntoVehicle ( source, vehiculo)
end

addEvent ("onBotonPatrulla",true)
addEventHandler("onBotonPatrulla",root,CrearPatrulla)

function CrearRanger (Vehicle,_)
	local PatrullaRanger = createVehicle ( 599, 1570, -1628, 13, 0, 0,87.757385253906)
	  warpPedIntoVehicle ( source, PatrullaRanger)
end

addEvent ("onBotonRanger",true)
addEventHandler("onBotonRanger",root,CrearRanger)



function CrearMary(Vehicle,_)
	local PatrullaMary = createVehicle ( 523, 1570, -1628, 13, 0, 0,87.757385253906)
	  warpPedIntoVehicle ( source, PatrullaMary)
end

addEvent ("onBotonMary",true)
addEventHandler("onBotonMary",root,CrearMary)


function CrearEnforc(Vehicle,_)
	local PatrullaEnforce = createVehicle ( 427, 1570, -1628, 13, 0, 0,87.757385253906)
	  warpPedIntoVehicle ( source, PatrullaEnforce)
end

addEvent ("onBotonEnforce",true)
addEventHandler("onBotonEnforce",root,CrearEnforc)


function CrearSWAT(Vehicle,_)
	local PatrullaSwat = createVehicle ( 601, 1570, -1628, 13, 0, 0,87.757385253906)
	  warpPedIntoVehicle ( source, PatrullaSwat)
end

addEvent ("onBotonswat",true)
addEventHandler("onBotonswat",root,CrearSWAT)

function CrearPatriot(Vehicle,_)
	local Patroit = createVehicle (470, 1570, -1628, 13, 0, 0,87.757385253906)
	  warpPedIntoVehicle ( source, Patroit)
end

addEvent ("onBotonPatriot",true)
addEventHandler("onBotonPatriot",root,CrearPatriot)





















function Rotacion(source,_)
	X1,X2,X3 = getElementRotation (source)
	outputChatBox(""..X1.." "..X2.." "..X3.." ",source,255,255,255,true)
end
addCommandHandler("rot",Rotacion)