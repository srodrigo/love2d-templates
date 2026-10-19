mkdir -p ./build

zip -9 -r ./build/game.love core/ data/ engine/ game/ roguelib/ main.lua conf.lua tables.lua

rm -rf ./dist
mkdir -p ./dist
cp -R ./lib/2dengine-love.js ./dist/play
rm ./dist/play/index.html
cp ./build/game.love ./dist/play

echo "<!DOCTYPE html>
<html>
<head>
    <title>Web Game</title>
    <base href="/play/">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <canvas id="canvas"></canvas>
    <div id="spinner" class="pending"></div>
    <script src="player.js?g=game.love"></script>
</body>
</html>" >> ./dist/index.html

