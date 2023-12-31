if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/jkdevloper01/JK-FILTER-BOT.git /JK-FILTER-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /JK-FILTER-BOT
fi
cd /JK-FILTER-BOT
pip3 install -U -r requirements.txt
echo "Starting JK-FILTER-BOT...."
python3 bot.py
