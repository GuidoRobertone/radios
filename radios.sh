#!/bin/bash

#----------------------------------------------------------------------------------------------
# Llama a MPlayer, segun la radio o canal indicada/o
# $Id: radio,v 1.8 2007-01-04 14:48:32 javier Exp $
# Fixes en etapa de ejecucion por Arturo 'Buanzo' Busleiman - 20070104
#
# Mejorada por: 
# 'Overclock_Orange' 20080806 - <fmdlc.unix@gmail.com> - http://www.codigounix.com.ar/
# Modificado por:
# 'Chuecko_Zarpele' 20080308 - <zarpele@gmail.com> - http://www.zarpele.com.ar
#----------------------------------------------------------------------------------------------

#### Inicio del Script ####

case "$1" in

#####Populares####

la100) #La 100 99.9
URII='http://buecrplb01.cienradios.com.ar/la100.flv'
echo "Reproduciendo Radio La 100." 
;;
radiole) #Cienradios - Radioole
URII='http://buecrplb01.cienradios.com.ar/radiole_64.mp3'
echo "Reproduciendo Radiole (cienradios)." 
;;
mega) #Mega 98.3  - NO FUNCIONA
URII='http://mega.telecomdatacenter.com.ar/mega'
echo "Reproduciendo Radio Mega." 
;;
rockandpop) #Rock And Pop 95.9 
#URII='http://streaming.fmrockandpop.com/audio959-rockandpop'
URII='http://201.212.5.144/audio959-rockandpop'
echo "Reproduciendo Radio Rock And Pop." 
;;
vorterix) #Vorterix 103.1
URII='http://184.173.77.4:9776'
echo "Reproduciendo Vorterix." 
;;
pop) #Pop 101.5 - NO FUNCIONA 
URII='http://pop.telecomdatacenter.com.ar/pop'
echo "Reproduciendo Radio Pop." 
;;
aspen) #Radio Aspen 102.3 
URII='mms://200.59.146.10/radioaspen-ba'
echo "Reproduciendo Radio Aspen." 
;;
metro) #RadioMetro 95.1 
#URII='http://streaming.metro951.com/metro'
URII='mms://201.212.5.144/metro'
echo "Reproduciendo Radio Metro." 
;;
disney) #RadioDisney 94.3 
URII='mms://radiodisney.telecomdatacenter.com.ar/radioDisney/radiodisney.asx'
echo "Reproduciendo Radio Disney." 
;;
los40) #Los 40 Principal
URII='http://66.175.96.10/ARLOS40P'
echo "Reproduciendo Los 40 Principal." 
;;
nacionalrock) #Nacional Rock
URII='http://208.85.241.150:8162/;stream.nsv'
echo "Reproduciendo Nacional Rock." 
;;
espn) #107.9 FM ESPN
URII='mms://a183.l1318236841.c13182.l.lm.akamaistream.net/D/183/13182/v0001/reflector:36841'
echo "Espn Radio." 
;;

#####Tango####

2x4) #La 2x4 Tango 
URII='mms://2x4.telecomdatacenter.com.ar/2x4'
echo "Reproduciendo 2x4." 
;;
#####AM####
lared) # Radio La Red AM 9100 
URII='mms://lared.wms.sinectis.com.ar/laredam910'
echo "Reproduciendo Radio La Red." 
;;
mitre) # Radio Mitre 792 AM 
URII='mms://streammitre.uigc.net/mitrevivo'
echo "Reproduciendo Radio Mitre." 
;;
delplata) # Del Plata AM 1030 
##http://active.telecomcdn.com/delplata/delplata
URII=$(wget -q -O - http://active.telecomcdn.com/delplata/delplata | grep 'Ref1=' | cut -c6-100)
echo "Reproduciendo Del Plata." 
;;
continental) # AM 590 Continental 
URII='http://66.175.96.10/arcontinental'
echo "Reproduciendo Continental." 
;;
radio10) # Radio 10 
URII='mms://200.43.193.143/radio10'
echo "Reproduciendo Radio 10." 
;;

nacional) # Radio Nacional
URII='http://208.85.241.150:8062/'
echo "Reproduciendo Radio Nacional." 
;;

#### Television ####

tn24) # TN 24 Horas 
URII='rtmp://stream.tn.com.ar/live'
echo "Reproduciendo TN 24." 
;;
canal7) # La televisiÃ³n pÃºblica 
URII='mms://canal7envivo.telecomdatacenter.com.ar/canal7envivo'
echo "Reproduciendo Canal 7." 
;;
cmtv) #CMTV El canal de la musica 
URII='mms://200.32.3.35:9080 '
echo "Reproduciendo CMTV." 
;;
canal26) # Canal 26 - Argentina
URII="mms://200.115.194.1:8080/Canal26?MSWMExt=.asf"
echo "Reproduciendo Canal 26." 
;;

*)
echo "Seleccione una emisora o canal de televisión.
Uso: radios [Codigo emisora]

              --->RADIOS POPULARES<---
 _______________________________________________
| Nombre:  			 			| Codigo:		|
|===============================|===============|
|*La 100 - 99.9 				| la100 		|	 
|*Cienradios - Radioole			| radiole 		|	
|*Rock And Pop 95.9				| rockandpop	|
|*Vorterix 103.1				| vorterix		|
|*Mega 98.3 		    		| mega  		|
|*Pop 101.5             		| pop		   	|
|*Radio Aspen 102.3				| aspen			|
|*Radio Disney 94.3				| disney		|
|*Los 40 Principal				| los40			|
|*Nacional Rock					| nacionalrock 	|
|*107.9 FM ESPN					| espn 			|
|_______________________________|_______________|

              --->RADIOS AM<---
 _______________________________________________
| Nombre:  					 	| Codigo:		|
|===============================|===============|
|*Radio La Red AM 9100 			| lared 		|	
|*Radio Mitre 792 AM			| mitre 		|
|*Del Plata AM 1030    			| delplata 		|
|*Contiental AM 590            	| continental  	|
|*Radio 10      				| radio10		|
|*La 2x4 Tango         			| 2x4           |
|_______________________________|_______________|

              --->TELEVISION ARG<---
 _______________________________________________
| Nombre:  						|	Codigo:		|
|===============================|===============|
|*TN 24 Horas 		       		| tn24	        |	 
|*La televisiÃ³n pÃºblica       | canal7  		|
|*CMTV El canal de la musica	| cmtv  		|	 
|*Canal 26 - Argentina          | canal26  		|
|_______________________________|_______________|
"
exit 1
;;
esac

#---------------------
#Llamado a mplayer
#---------------------
mplayer -af lavcresample=44100 -cache 160 "$URII"
#### Fin del Script ####
