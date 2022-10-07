local utility = {}
function utility.newfile(name, data)
	if not isfile(name) then
		writefile(name, data)
	else
		warn("(" .. name ..") already exists, please use 'appendfile(filename.extension, data)'.")\
	end
	return name
end

function utility.newfolder(name)
	if not isfolder(name) then
		makefolder(name)
	else
		warn("Folder already exists.")
	end
	return name
end
