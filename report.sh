#
# Report the results of model checking run outputs.
#

for f in `ls results` 
do
    echo "*$f*"
    echo "\`\`\`"
    grep "generated,\|Finished\|Invariant\|No error has" "results/$f"
    echo "\`\`\`"
    echo ""
done