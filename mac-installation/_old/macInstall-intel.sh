echo "Prepping some homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval $(/opt/homebrew/bin/brew shellenv)

echo "Tap dat homebrew"
brew tap 'homebrew/cask'
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

echo "Stiring the homebrew..."
brew update # will update the list of available formulae
brew upgrade # will upgrade any outdated packages

echo "Adding some ZHS to the brew"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Browsers & More
echo "Adding the main ingredients"
brew install --cask brave-browser
brew install --cask docker
brew install --cask figma
brew install --cask firefox-developer-edition
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask microsoft-edge
brew install --cask microsoft-teams
brew install --cask postman
brew install --cask sequel-pro
brew install --cask transmit
brew install --cask visual-studio-code
brew install --cask warp

# Stuff
echo "Toss in some supporting flavs"
brew install composer
brew install git
brew install node
brew install nvm
brew install php
brew install yarn

# More Stuff
echo "And now the finishing touches"
brew install --cask 1password
brew install --cask fig
brew install --cask font-fira-code
brew install --cask memory-clean-3
brew install --cask raindropio
brew install --cask rectangle
brew install --cask tableplus

mkdir ~/.nvm

echo "
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&@@@@@@@@@@@@@@@&#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@BB@@@@@@&@@@@@@@@&P#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B##&&#BBB##&&##B#&B&P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@G#@##&@@@@@@@@@@&&&@G&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@PB@@@@@@@@@@@@@@@@@@##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@55&@@@@@@@@@@@@@@@@@&B@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@YJP@@@@@@@@@@@@@@@@#@P&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@5?5@@@@@@@@&@@@@@&#G@P&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@5??B&&@B#@@B@@@@@##5BP@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@P5PB&G@@B##B#@&&&B@BPP&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@PP@BG5B@#GGGPB##BBBBPP&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@PYB5PGGGBP5PPPPGG55#PB@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@PJ5Y55PGBG5B@&#GG55PGG@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@BYYJB#&BBPP#&B#B&&Y!YG@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@BBP5P5#@@&B#B#@@&#?Y&B&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@G&&#J!P#G########G5GG&B@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#B####Y?GBB##&BPG&BPJ5&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&##&@&GPB@GYYP&&##BGGGGJP&&@&&#&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&#&&&BPPPYJYG##Y7?7J55B#GJYYP5PB&&&&#&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@&&##&@@@@BY?JJY55PPPG#P7!75#G5YYYYJJYPB##&@@&&BB#&&@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@&&&&&&&&@@@@@@@&###&&&@@&@&B##5JG#B#&@&&#&@@@@@@@@@@@@&&#&&&&@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@&##&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&@@@@@@@@@@@@@@@@&&@&&@@@@@@&&###@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@#B#&@@@@@&&&&@@@@@@@@@&BG&@@@&&@&B#&&&@@&&@&##&@@@@@&&&&#B#&&#&@@@@@&B&@@@@@@@@@@@@@@@@@
@@@@@@@@@@&B#@@@@@@&BGB&@@&#&@@@&BG#@@@&B&@&Y5GB#B#&@#B&&BBB@@@@@&##&#BB##BBBB&&@&P#@@@@@@@@@@@@@@@@
@@@@@@@@@#B#@@@&&#GG#&#B#&@@@@BPB&@@@&BB&@#JPBYJY5GB&@##@@&BG#@@@&&&BB##BB###BGP5J?YB@@@@@@@@@@@@@@@
@@@@@@@@#PG5PGGPPG&&#GB&@&#@&GG#@@@@GYB@@BYJJ?JJJYJYPG@&#@@@#GG#@@&B#&#B#&#G55GGGGY??B@@@@@@@@@@@@@@
@@@@@@@&YG5555GBGGBPP&&#BGBBB&@@&&@#5#@#GY7??JY5YJYYYY5@&G@&@@&GP#@@#B#@&##&#PYJY5YJYY#@@@@@@@@@@@@@
@@@@@@@55P5G&&BYYYYP#GGBBBG#@@@#B@#G&@BPPGGP5YJJJ555GGGP@#P&#&@@&BB@@@GB&&GBBPGP5Y5GPYP@@@@@@@@@@@@@
@@@@@@P5YY5BBPP5PPPB#&#BB#&@&@GG@#G&@BPG@@@@@#G5YYB&@@@GP@GP&&#@@@#B#@@&B##GGPYYJYY555YG@@@@@@@@@@@@
@@@@@BJJYY5GP5PBGB&&#BGB#&&&&PG@&B@@PPG@@@@@@@@#PP@@@@@@55&GP@#G@@@@#G&@@#5PBGPPPY?JJJ55&@@@@@@@@@@@
@@@@@G5555GPGB####G5PB##&#&#PB@#B@@PJP&@@@@@@@@@5#@@@@@@&Y5&PP@#G&@@@&GG&@#55GGYY5PGPYYGB@@@@@@@@@@@
@@@@@#555PGPBB#BP55YG&@#B&G5B@&G&@GYYB#&@@@@@&BG5PB&@@@@@#YP&5P@&5B@@@@B5#@@G5PPY?7JY?Y5#@@@@@@@@@@@
@@@@@@P55PBBPPY5GPYG@&G#&P5B@&GB@PYYP5JJ5GBBBBBB##BP5GBPPPG5G&5G@#5P&@@@BJP&@&JYY?!7?JY5@@@@@@@@@@@@
@@@@@@B5555JJYYPPB&@GG&#5YP&&PP#G?5PPPYJJP#&@@@@@@@@&&BG55555G#JP##PG&@@@#Y?P#&Y?J77JJY&@@@@@@@@@@@@
@@@@@@5JJYYJYPGG#&GPB@GJY5&@GPGGYYPG#&&&@@@&##BBBBBB#&@&#GPPG5G5?5#&55B@@@#??JB@5J??Y5B@@@@@@@@@@@@@
@@@@@&YYJJJYPGPBGYP&#YJY5#@BYY5JY5BBBP5GBG5YY5YY555Y5PPGBP5PBYJPJ?P&5J75@@@BY7YPBY77?Y5&@@@@@@@@@@@@
@@@@@B5JJJY5PPPJY#&P??J5B@#JYYJY55YPGPYJJJJJYYJ5Y55Y5Y55YYYJYP?YPJJPBY??P&@@GJ7YBG?!7YYY&@@@@@@@@@@@
@@@@@5JJY55PGYJP&#5?JYP#@&5JJY5PBY?JYYJJJ???JJYJY5YY5YYYYY55Y5Y7JP??PGYJ?5#@&PJ?5JJ?7?555&@@@@@@@@@@
@@@@GYJ?JY5GY5G&GJ7?YPB@@GJJJ5PG#G55JJ?JYJ?JYY5JYY55555Y5P5Y55GJ7JJJJPGJ??YPB&PYJYJ?J?J5PB@@@@@@@@@@
@@@#5Y?JY5PYJ5GGJ77?5B@@#PYJ55GBB#BG5JJYYPGB&&#BGPG#&&&&#BGPGG#BJ?JJYJG57!?5PBG5YJJ??J?JP@@@@@@@@@@@
@@&Y5??J555?JYYYJ?J5B@@&G5?Y5GPGB##5####&@&@@@@@@@@@@&@&#BG&&GPBG????JYJJ!7J5PPGYYJ?J?JYP&@@@@@@@@@@
@@P5J?JY55JJPJYJ?J5G&@#G5YYYP#BGGG#G5GGBBBBB&@@@BB&&BBGYPGGBG5PGB5!?JJY?JJ7?JJYGPYJJJYJ55@@@@@@@@@@@
@&55?JYY5YJPGYJJYPG#@BG5JJP5GB###BBB55GPBB&&@@&BPPB&&###BGGB5PG5PP77YYY??JJ?7?JYPYJ?YYYYP&@@@@@@@@@@
@@BPYYYPY?Y5GY?JPG#@#G55Y5BP5PPPPBBBGP#BG#&@@@@@&&@@@@@B#GPB#GGPG5??7YYJJ?JJ?7JYYY?Y??JJJP&@@@@@@@@@
@@&G5YYY7JYPYYY5P#&BPP55JPGPPGG5PBGGB#BGPGGB#&&&GB##BBPGBPGGBB&@#PY?7?55J??YYJ??J5J?Y!77?JP@@@@@@@@@
@@@#5Y5??J555P5PB#BP5Y5YYPPBPPP5GBGB#BGG&&PGBGGGGBBBBG##&GPB#&#BBPPJ?7JY5?7?5PJJJJJJY?777?JP@@@@@@@@
@@@#PPY?JY5YGGPGBBGPYYJY5#BBYBPPGB@@&##G&GPGPBPP5GGPBGPB#&G5B&&GPBBJJJ7YJYJJYGG5YJ?JYJ?J7?J5G@@@@@@@
@@@&BB???JJPP55PPPGPYJ?PPPGBGGGYPG&@BBBGGGY5PPPB###BGBPPG&PP#BP#BB@PJ?????JYYYPG5Y???YYYYJJ5J#@@@@@@
@@@&&5Y???Y5P5GGPPYJGJYGPP##PGBG5Y#G5GGGGB#GPGBGPGBGGBGB##GPPGP#GPBBJY?J?YJJJY55GY577?YYYJJJYY&@@@@@
@@@@&JY??JJG5GGGB555PYP5GBGPB##G5BG#BBPBBGBGGBGBGGBBBBGBGGGP5B##GGB&PYJ???5JJJY5PYPY7?JYJYJJYY5@@@@@
@@@@GYY??J7G5GGGPGY5Y5GGBGGPGBB5BBBB#&P5G55PBGGPYP5GBGP5Y5GPPBBGPGGBGJY???JPYYJJ5Y5Y77?JYYJJJ5YP@@@@
@@@@B5YJJ7?GYGGPP5YYYP5#BGPGPG&5BBBGGPP5P5PPGPP5Y5Y5Y55YYGG5PY5PGBBBGY5Y?J7JPG5JJYJJ?777?YY5JY5YB@@@
@@@&GGYJJ!?GPPP5PYJY5PGBG55PP5BGGPGGGPPGP55555YYJYYY5P5YJ5PGG5GGGB#B#555YJJ?5G#G5JJYJ??77?JJYYPGP#@@
@@@&B#GJJ!?P5GY55?JY5PG5YYYYJJJ5PB#BG5YYPPYYYYYJJYYYY5YYJY5P55PPP55GGB555YJJ7PB#B?7JJJ?????JYYG&&#&@
@@@@@@PP??JPYPYJ??5Y5PPJ?J?????JPB&YGGYJY5YY5YYJY5YJY5JJJJY5YJ55PPPG5#GYJYY???PB&BJ?7?J???JY5P&@@@@@
@@@@@&BG??YPY5Y?JYBG55Y??JJJJ??J5BB&YGYJJYYY5YYYYYYJYYY?JJY5YYYYPY5P5BBJJ?Y???7PG@BJ7!7J?JY555#@@@@@
@@@@@&##YY5PPYY55PGGYYY?JJJ?JJ?JYPG@&PPJJJYYYYJYJY5YYYYJJ?Y5YJJJ5Y555GPYJ7JJJJ?J5B@BJ7!JYJPG5G#&@@@@
@@@@@@@#5GGB5YY5PPGGY5YJJYJJJJ?JYPG#@BGJJJYY5YYJJJ5YYY5JYJY555YY555YPP5JJ7?JYJJJY5G&BJ?7?Y5PGP#@@@@@
@@@@@@@BPBBB55YPPGGP55JYJYJYJJ??YYPPP5B5YJYYYJYYYJY5YYYYYJ555YY555YY55JY5YJYYYYJYY5G&GJJJY5PPB&@@@@@
@@@@@@@@@BBBBPYPPGGPYYYYYYYJYJJJJJY5P5PPYJJYYJY5YJYYJJY55Y5555YYYYJJJ55Y555YYY55YYY5PB5Y55PGB##@@@@@
@@@@@@@@@&&&##GGPGGG55YYYJYY5YJJJYYJY5P5YJJYYYJ5YJJ5YYJYJJJ555YYJYYY5PG?YY555Y555YJY55G55P5PG&@@@@@@
@@@@@@@@@@@@&BBGPPBB555YYY55YYYJYYYYJ5P5J5YYYYY55YJJ5YJJYJJYY55YYY555GBPJY5555Y55P5YY5P5JJ5GB#@@@@@@
@@@@@@@@@@@@@#B#####BGP5P55P555YYYY5YY5Y5Y5PPPG5555J5PY5P5PGPGGPPY55PGBBP5Y5P5PJY5P5Y5GGPPJYB&@@@@@@
@@@@@@@@@@@@@&&&###@@#GGPPGGBPPG#BGBGPGGP5PB###BGGBBB&&&##&@@#&&@&##&&&&&PPPBBBG5PG#BBG#@&##&&@@@@@@
@@@@@@@@@@@@@@&&&&&@@@#&&#&@&&@@@@&&@@&&&##&@@&&@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@@@&@&&&@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

I am batman
"
