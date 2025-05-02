# Cache Cleaner (Windows)

## Overview

This **Cache Cleaner** is a multi-functional batch file tool for Windows, designed to streamline system maintenance by removing unnecessary files and caches.  
It helps improve system performance and free up valuable storage space by offering a simple, easy-to-use menu interface.

## Features

- **Menu-Driven Interface**: Select what you want to clean with a simple numbered menu.
- **Targeted Cleaning Options**:
  - **Temporary Files**: Deletes files from the Windows temp folder.
  - **Prefetch Files**: Clears Windows prefetch data.
  - **Windows Update Cache**: Removes outdated and unnecessary update files.
  - **Browser Cache (Chrome/Edge)**: Clears cache from popular browsers.
  - **DNS Cache**: Flushes DNS resolver cache.
  - **ARP Cache**: Clears Address Resolution Protocol cache.
  - **Thumbnail Cache**: Removes cached thumbnail images.
  - **Event Logs**: Clears Windows event logs.

- **Full System Clean**: One-click option to clean all supported caches in a single operation.

## Benefits

- **Improves System Performance**  
  Removing unnecessary cached data can speed up your computer and fix minor system glitches.

- **Frees Up Storage Space**  
  Clears out hidden files that accumulate over time and take up disk space.

- **Easy to Use**  
  No technical expertise required — just run the batch file and choose from the menu.

## Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/asrnb/cachecleaner-menu.git
    ```

2. **Navigate to the project directory:**

    ```bash
    cd cachecleaner
    ```

3. **Run the batch file:**

    - Double-click `cachecleaner.bat`  
    **OR**  
    - Open **Command Prompt** as Administrator and run:

    ```bash
    cachecleaner.bat
    ```

> **Note**: For full functionality (especially clearing system caches), run the batch file with **Administrator privileges**.

## Usage

- Launch the batch file and follow the on-screen menu.
- Enter the number corresponding to the cleaning option you want to perform.
- To perform a **Full System Clean**, simply select the **Full Clean** option from the menu.

## Disclaimer

Use this tool responsibly. Although it only removes safe-to-delete caches, always ensure you understand what each option does before proceeding.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
