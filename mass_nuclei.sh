for i in $(ls found/);
do

for x in $(cat found/$i); 
do
nuclei -u $x -t detect-all-takeovers.yaml | tee -a results/results.txt
done
done

