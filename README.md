# Claude Code Dev Container

A simple development container for Claude Code that enables working with Claude AI directly in a dev container.

## 🚀 Quick Start

### 1. Open Container
Open this folder in VS Code/Cursor and select "Reopen in Container".

### 2. Initial Setup

On first container start, run:
```bash
npm run claude:init
```

### 3. Regular Usage
For daily use, run:
```bash
npm run claude
```

## 📋 What happens during setup?

The `setup.sh` script:
- Creates a `package.json` with necessary npm scripts
- Checks Claude Code installation
- Automatically loads `.env` file (if present)
- Verifies if an API key is configured

## 🔧 Configuration

### Setting up API Key
Create a `.env` file in the root directory:
```bash
ANTHROPIC_API_KEY=your_api_key_here
```

## 📝 Available Commands

- `npm run claude:init` - Initial setup of Claude Code
- `npm run claude` - Starts Claude Code for daily use

## 🎯 Usage

After starting `npm run claude`, you can:
- Interact with Claude via chat
- Generate and edit code
- Analyze and improve files
- Ask questions about your code

## 📦 Dependencies

- Node.js (included in container)
- `@anthropic-ai/claude-code` (automatically installed)
- Anthropic API Key (required)
