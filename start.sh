if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Josephkdominic/Emiliabot.git /Emiliabot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Emiliabot
fi
cd /Emiliabot
pip3 install -U -r requirements.txt
echo "Starting..."
python3 bot.py
