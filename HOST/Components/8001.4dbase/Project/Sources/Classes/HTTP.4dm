Class constructor
	
	$rootFolder:=Folder:C1567("/PACKAGE/HTTP")
	$rootFolder:=OB Class:C1730($rootFolder).new($rootFolder.platformPath; fk platform path:K87:2)
	
	$certificateFolder:=Folder:C1567("/PACKAGE/TLS")
	$certificateFolder:=OB Class:C1730($certificateFolder).new($certificateFolder.platformPath; fk platform path:K87:2)
	
	This:C1470.settings:=New object:C1471
	This:C1470.settings.rootFolder:=$rootFolder
	This:C1470.settings.HTTPPort:=8001
	This:C1470.settings.HTTPSPort:=4431
	This:C1470.settings.certificateFolder:=$certificateFolder
	
	This:C1470.server:=WEB Server:C1674(Web server database:K73:30)
	
Function start
	
	This:C1470.server.start(This:C1470.settings)
	
	return This:C1470
	
Function stop
	
	This:C1470.server.stop()
	
	return This:C1470
	
Function open
	
	OPEN URL:C673("https://127.0.0.1:"+String:C10(This:C1470.server.HTTPSPort)+"/"+This:C1470.server.defaultHomepage)
	
	return This:C1470