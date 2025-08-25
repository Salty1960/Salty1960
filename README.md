- 👋 Hi, I'm @Salty1960
- 👀 I'm interested in AI building and administration automation

## Git PAT Terminal Form

A terminal-based form interface for Git operations using Personal Access Token (PAT) authentication. This tool provides a user-friendly way to configure and use GitHub Personal Access Tokens for automated Git operations.

### Features

- **Interactive Terminal Form**: Easy-to-use command-line interface
- **Secure PAT Management**: Prompts for PAT without storing it in plain text
- **Git Operations**: Pull repositories using PAT authentication
- **Configuration Management**: Save and load repository settings
- **PAT Validation**: Test your Personal Access Token before use
- **Colored Output**: Beautiful terminal interface with colored text

### Quick Start

1. **Installation**:
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

2. **Run the tool**:
   ```bash
   ./git-pat-terminal.sh
   ```

3. **Configure your PAT**:
   - Select option 1 from the menu
   - Enter your GitHub username
   - Paste your Personal Access Token
   - Enter your repository URL

### Personal Access Token Setup

To use this tool, you'll need a GitHub Personal Access Token:

1. Go to GitHub Settings → Developer settings → Personal access tokens
2. Click "Generate new token"
3. Select appropriate scopes (at minimum: `repo`, `read:user`)
4. Copy the generated token

### Usage

The tool provides an interactive menu with the following options:

1. **Configure PAT and Repository**: Set up your GitHub credentials and repository
2. **Pull Repository**: Pull latest changes from your configured repository
3. **View Current Configuration**: Display your saved settings
4. **Test PAT**: Validate your Personal Access Token
5. **Exit**: Close the application

### Configuration

Configuration is stored in `~/.git-pat-config`. You can also copy the example:

```bash
cp .git-pat-config.example ~/.git-pat-config
# Edit the file with your settings
```

### Security Notes

- Personal Access Tokens are never stored in configuration files
- The tool prompts for PAT input with hidden text entry
- Configuration file permissions are set to 600 (owner read/write only)
- Git credentials are stored using Git's credential helper

### Requirements

- Git
- curl
- Bash shell
- Valid GitHub Personal Access Token

### Troubleshooting

- **PAT Validation Failed**: Ensure your token has the correct scopes
- **Repository Access Denied**: Check that your PAT has access to the repository
- **Network Issues**: Verify internet connection and GitHub accessibility

### Contributing

This tool is part of the automation toolkit for AI building and administration. Feel free to suggest improvements or report issues.