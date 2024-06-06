if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Safarideveloper/SAFARI-FILTER-BOT.git /SAFARI-FILTER-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SAFARI-FILTER-BOT
fi
cd /SAFARI-FILTER-BOT
pip3 install -U -r requirements.txt
echo "Starting SAFARI-FILTER-BOT...."
python3 bot.py
