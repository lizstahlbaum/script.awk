BEGIN{
        FS=","
        TREE_COUNT=0
        AVG=0
        DEAD=0
}
NR>1{
{if ($4>=25)
        {AVG+=$3
        TREE_COUNT+=1}
        }}
{if ($5=="diseased")
        {DEAD+=1}       }
END {
if (TREE_COUNT>0){
        print "Average old tree width = "AVG/TREE_COUNT
}
print "Diseased pine tree count = "DEAD
        }
