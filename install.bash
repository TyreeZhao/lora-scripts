echo "Creating python venv..."
python3 -m venv venv
source venv/bin/activate

echo "Installing torch & xformers..."
# printf 'Which version of torch do you want to install?
# (1) torch 2.0.0+cu118 with xformers 0.0.17 (suggested)
# (2) torch 1.12.1+cu116, with xformers 0bad001ddd56c080524d37c84ff58d9cd030ebfd
# '
pip install torch==2.0.0+cu118 torchvision==0.15.1+cu118 --extra-index-url https://download.pytorch.org/whl/cu118
pip install xformers==0.0.19

echo "Installing deps..."
cd ./sd-scripts

pip install --upgrade -r requirements.txt
pip install --upgrade lion-pytorch lycoris-lora dadaptation fastapi uvicorn wandb

pip install --no-cache-dir boto3

echo "Install completed"
