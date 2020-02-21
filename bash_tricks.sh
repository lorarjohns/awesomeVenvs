# Trick sync into letting you keep files on the cloud only 
# brew cask install sync
rm -r /Users/lorajohns/Sync/Sync.Cache/vault && ln -s /Users/lorajohns/Sync/cloud /Users/lorajohns/Sync/Sync.Cache/vault


# make a jupyter kernel for a virtual environment
$projectname = 
$venvname = venv-$(projectname)
ipython kernel install --user --name=$(venvname)

# git rid of EVERY docker container
docker rm $(docker ps -a -q)


# render svgs with headless chrome
chrome --headless --screenshot --window-size=256,256 --default-background-color=0 index.html
"/Applications/Google \Chrome.app/Contents/MacOS/Google \Chrome" --headless --screenshot --window-size=256,256 --default-background-color=0 index.html
npx serve .
npm init -y
npm -i --save @gitgraph/js


npm i --save-dev parcel-bundler
npm start


# find framerate in a gif
convert -coalesce batch_gradient_descent.gif gd.png
magick identify -verbose batch_gradient_descent.gif | grep 'Delay'
 
# make text spirals in LaTeX
xelatex spiral_bounding_box.tex
dvips spiral_bounding_box.dvi
ps2pdf spiral_bounding_box.ps

# change image formats
-s format png --out "time.png" "spiral_bound_physics.pdf"

# convert pdf to png with inkscape
inkscape ~/Development/LaTeX/vcard.pdf --export-png=$(pwd)/card.png --export-area-page
