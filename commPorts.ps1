<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2019 v5.6.156
	 Created on:   	5/1/2019 7:21 AM
	 Created by:   	Thaddeus Pearson
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		GPS COM troubleshooting for GeTacs and MDCs
#>

# list available COM port names
[system.io.ports.serialport]::getportnames()
Pause


# create the port object
$port = new-object system.io.ports.serialport COM2, 9600, none, 8, one


# open the newly created port object 
$port.open()


# read the GPS data that is flowing through the port, if any
$port.readexisting()


# close the port 
$port.close()



