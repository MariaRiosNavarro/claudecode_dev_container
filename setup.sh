#!/bin/bash
echo "🚀 Setting up Claude Code Dev..."

# Package.json with npx (just in case)
cat > package.json << 'EOF'
{
  "name": "claude-workspace",
  "private": true,
  "scripts": {
    "claude": "npx @anthropic-ai/claude-code start",
    "claude:init": "npx @anthropic-ai/claude-code init"
  }
}
EOF

# Check installations
echo "📋 Checking installations..."
claude-code --version && echo "✅ Claude Code: OK" || echo "❌ Claude Code: Missing"

# Check files
[ -f .env ] && echo "✅ .env found" || echo "⚠️  .env missing"

# Auto-load .env if it exists
if [ -f .env ]; then
    source .env
    [ -n "$ANTHROPIC_API_KEY" ] && echo "✅ API Key loaded" || echo "⚠️  API Key missing in .env"
fi

echo "✅ Setup complete!"
echo "🚀 Ready to use: npm run claude:init && npm run claude"