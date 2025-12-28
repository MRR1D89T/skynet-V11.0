#!/bin/bash
echo "⚡ SKYNET Installation for Kali Linux"
echo "======================================"

# Cek Python
python_version=$(python3 -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")')
echo "Python version: $python_version"

if [ $(echo "$python_version < 3.8" | bc 2>/dev/null || echo "1") -eq 1 ]; then
    echo "❌ Python 3.8 or higher required"
    exit 1
fi

# Buat virtual environment
echo "📁 Creating virtual environment..."
python3 -m venv skynet_env

# Aktifkan virtual environment
echo "📦 Activating virtual environment..."
source skynet_env/bin/activate

# Install dependencies di dalam virtual environment
echo "📦 Installing dependencies..."
pip install --upgrade pip

# Minimal dependencies untuk Kali
cat > minimal_requirements.txt << 'EOF'
psutil>=5.9.0
requests>=2.28.0
cryptography>=41.0.0
rich>=13.0.0
EOF

pip install -r minimal_requirements.txt

echo "✅ Installation complete!"
echo "🔧 To activate virtual environment: source skynet_env/bin/activate"
echo "🚀 Then run: python skynet15.py --help"
