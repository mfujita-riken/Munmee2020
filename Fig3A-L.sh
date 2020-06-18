#!/bin/bash
#$ -S /bin/bash
#$ -cwd -l s_vmem=2G,mem_req=2G

#$ -e /error_files
#$ -o /out_files


/Tools/circos/circos-0.69-6/bin/circos -conf Fig3A-L.conf  -debug_group legend -outputfile circos.png

