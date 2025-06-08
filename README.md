# EGSRAMBypass

**EGSRAMBypass** is a tweak designed to remove the 4GB RAM usage limitation in **Epic Games Store**. The tweak allows you to improve performance and run games that may require more memory for smooth operation. The tool uses **Theos** for modification and **MSHookFunction** hook to intercept functions responsible for memory usage limitations.

## Features
- Removes the 4GB RAM usage limit in Epic Games Store.
- Built using **Theos**.
- Utilizes **MSHookFunction** for hooking functions related to memory usage.
- Easy to install and configure.

## Requirements
- **Theos** — for building and development.
- **iOS devices** or **emulator**, if applicable.
- **Epic Games Store** — required to run games via the store.

## Installation
1. Ensure you have **Theos** installed.
2. Clone the repository:

    ```bash
    git clone https://github.com/leeksov/EGSRAMBypass.git
    ```

3. Navigate to the project directory:

    ```bash
    cd EGSRAMBypass
    ```

4. Build the project:

    ```bash
    make
    ```

5. Install the tweak to the device (if required):

    ```bash
    make install
    ```

6. Restart the Epic Games Store and enjoy the removal of the 4GB RAM limitation!

## Usage
Once the tweak is installed, the Epic Games Store will function without the 4GB RAM limitation, allowing you to run games that require larger amounts of memory.

## Notes
- **EGSRAMBypass** interferes with the operation of the Epic Games Store and may affect the program's stability. Use at your own risk.
- We are not responsible for any potential issues or bugs related to the use of this tool.

## Contributing
If you have suggestions for improvements or have found a bug, feel free to open an **issue** or create a **pull request**.

## License
This project is licensed under the **MIT** License.
