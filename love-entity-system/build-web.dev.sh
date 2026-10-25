mkdir -p ./build-dev

zip -9 -r ./build-dev/game.love core/ data/ engine/ game/ roguelib/ main.lua conf.lua tables.lua

rm -rf ./dist-dev
mkdir -p ./dist-dev
cp -R ./lib/2dengine-love.js ./dist-dev/play
rm ./dist-dev/play/index.html
cp ./build-dev/game.love ./dist-dev/play

echo "<!DOCTYPE html>
<html>
<head>
    <title>Web Game</title>
    <base href=\"/play/\"/>
    <link rel=\"stylesheet\" href=\"style.css\"/>
</head>
<body>
    <canvas id=\"canvas\"></canvas>
    <div id=\"spinner\" class=\"pending\"></div>
    <script src=\"player.js?g=game.love\"></script>
</body>
</html>" >> ./dist-dev/index.html

