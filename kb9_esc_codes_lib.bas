 1 POKE 10920,169:REM Return bug
 
 5 ES$=CHR$(27)+CHR$(91)
 6 CL$=ES$+"2J":RV$=ES$+"7m":NO$=ES$+"m"
 7 HM$=ES$+"H"
 
 8 RED$=ES$+"1;31m":GRE$=ES$+"1;32m"
 9 BLU$=ES$+"1;34m":YEL$=ES$+"1;33m"
 10 CYA$=ES$+"1;36m":MAG$=ES$+"1;35m"
 
 11 DN$=ES$+"1B":UP$=ES$+"1A"
 12 LEF$=ES$+"1D":RIG$=ES$+"1C"
 
 
 100 PRINTCL$:REM SAMPLES
 110 PRINT"CLEAR"
 120 PRINTHM$
 130 PRINT"HOME"
 140 PRINTRED$+"RED"
 150 PRINTGRE$+"GREEN"
 160 PRINTYEL$+"YELLOW"
 170 PRINTCYA$+"CYAN"
 180 PRINTMAG$+"MAGENTA"
 190 PRINTDN$+"1 DOWN";
 200 PRINTUP$+"1 UP";
 210 FOR I = 1 TO 5
 220 PRINTRIG$;
 230 NEXTI
 240 PRINT"5 RIGHT"
 250 FOR I =1TO20
 260 PRINTDN$;
 270 NEXT I
 280 PRINT"20 DOWN"
 290 PRINTRV$+RED$+"REVERSE RED"
 400 PRINTNO$


