cd charts
for f in */; do    
    if [ "$f" != "." ]; then
        echo "Processing $f file..."    
        helm package $f
        mv *.tgz ..
    fi
done
cd ..
helm repo index --url https://owainperry.github.io/helm-charts .
git add . 
git commit -m "updates"
git push origin main