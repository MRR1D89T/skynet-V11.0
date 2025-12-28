required_packages = [
    'psutil',
    'requests', 
    'cryptography',
    'OpenSSL',
    'numpy',
    'pandas',
    'msgpack',
    'rich'
]

print("🔍 Verifying SKYNET v15.0 installation...")
print("=" * 50)

all_ok = True
for package in required_packages:
    try:
        __import__(package)
        print(f"✅ {package:20} OK")
    except ImportError as e:
        print(f"❌ {package:20} MISSING: {e}")
        all_ok = False

print("=" * 50)
if all_ok:
    print("🎉 All dependencies installed successfully!")
    print("⚡ SKYNET v15.0 is ready for quantum destruction!")
else:
    print("⚠️  Some dependencies missing.")
    print("💡 Run: pip install -r requirements.txt")