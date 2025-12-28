echo "⚡ SKYNET v15.0 Installation"
echo "============================"

# Check Python version
python_version=$(python3 -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")')
echo "Python version: $python_version"

if [[ $(echo "$python_version < 3.8" | bc) -eq 1 ]]; then
    echo "❌ Python 3.8 or higher required"
    exit 1
fi

# Create requirements file
cat > requirements.txt << 'EOF'
psutil>=5.9.0
requests>=2.28.0
cryptography>=41.0.0
pyOpenSSL>=23.0.0
numpy>=1.24.0
pandas>=2.0.0
msgpack>=1.0.0
rich>=13.0.0
EOF

echo "📦 Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "✅ Installation complete!"
echo "🚀 Run: python skynet15.py --help"