# Git PAT Terminal Form - Usage Examples

This file demonstrates how to use the Git PAT Terminal Form tool.

## Example Session 1: First Time Setup

```bash
# Run the tool
./git-pat-terminal.sh

# Select option 1 (Configure PAT and Repository)
# Enter your GitHub username: your-username
# Enter your Personal Access Token: [hidden input]
# Enter repository URL: https://github.com/your-username/your-repo.git

# Tool will validate your PAT and save configuration
```

## Example Session 2: Pull Repository

```bash
# Run the tool
./git-pat-terminal.sh

# Select option 2 (Pull Repository)
# Enter branch to pull: main
# Enter target directory: /path/to/local/repo

# Tool will pull the latest changes using your saved PAT
```

## Example Session 3: Test PAT

```bash
# Run the tool
./git-pat-terminal.sh

# Select option 4 (Test PAT)
# Enter Personal Access Token to test: [hidden input]

# Tool will validate the PAT against GitHub API
```

## Installation Example

```bash
# Make scripts executable
chmod +x install.sh
chmod +x git-pat-terminal.sh

# Install to ~/bin (optional)
./install.sh

# Run from current directory
./git-pat-terminal.sh

# Or run from PATH (if installed)
git-pat-terminal
```

## Security Best Practices

1. Never share your Personal Access Token
2. Use tokens with minimal required scopes
3. Regularly rotate your tokens
4. Keep your configuration file secure (600 permissions)
5. Consider using environment variables for CI/CD scenarios