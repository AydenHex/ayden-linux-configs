# Ayden's Linux Configuration Repository 🎉

## Overview 📜
This repository contains the complete set of Linux configuration files used by Ayden. These configurations are tailored for an optimized and efficient workflow on a Linux system. 

## Prerequisites 📋
Before using the configurations in this repository, ensure that the following dependencies are installed on your system:

- **zsh**: A powerful and highly customizable shell.
- **zoxide**: A smarter cd command for navigating your filesystem.
- **fzf**: A general-purpose command-line fuzzy finder.
- **brew**: A package manager for Linux (and macOS).

## Setup Instructions 🛠️
To set up the configurations on your system, you need to create symbolic links (symlinks) for the configuration files to your home directory. This can be done using the `ln` command. Follow the steps below:

1. Clone this repository to your local machine:
   ```sh
   git clone https://github.com/yourusername/ayden-linux-config.git
   cd ayden-linux-config
   ```

2. Create a symbolic link for the `.zsh_plugins` file:
   ```sh
   ln -s $(pwd)/.zsh_plugins $HOME/.zsh_plugins
   ```

3. Create a symbolic link for the `.zshrc` file:
   ```sh
   ln -s $(pwd)/.zshrc $HOME/.zshrc
   ```

Note: The scripting to automate these steps is currently in progress. 🚧

## Additional Information ℹ️
Ensure you have the necessary permissions to create symbolic links in your home directory. If you encounter any issues or have any questions, feel free to open an issue in this repository.

## License 📄
This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

Feel free to reach out if you need any further assistance or have suggestions for improving these configurations. Happy configuring! ✨

---
