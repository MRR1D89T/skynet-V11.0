echo "⚡ SKYNET v15.0 Complete Installation"
echo "===================================="

# Update system
sudo apt update
sudo apt install -y python3 python3-pip python3-dev build-essential \
    libssl-dev libffi-dev libpcap-dev cmake

# Install all requirements
pip3 install --break-system-packages --upgrade pip
pip3 install --break-system-packages -r requirements.txt

# Verify installation
python3 -c "
import psutil, requests, cryptography, uvloop
import numpy, pandas, scapy, flask, rich
print('✅ SKYNET v15.0 READY FOR QUANTUM DESTRUCTION')
print(f'• psutil: {psutil.__version__}')
print(f'• requests: {requests.__version__}')
print(f'• uvloop: {uvloop.__version__}')
"

echo "🚀 Run: python3 skynet15.py --help"
