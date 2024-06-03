# Quick and Dirty Convert HEIC to JPG

This script is designed to quickly and efficiently convert all HEIC files in the current directory to JPG format using ImageMagick on Linux systems. It handles both uppercase and lowercase file extensions and includes a simple progress indicator to track the conversion process.

## Prerequisites

Before running the script, ensure you have ImageMagick installed on your system. ImageMagick is used for the conversion process.

### Installing ImageMagick

You can install ImageMagick on most Linux distributions using the package manager. For example, on Debian-based systems, use:

sudo apt-get install imagemagick

Usage

    Download the script: Clone or download the script to your local machine.
    Make the script executable: You need to make the script executable to run it. Use the following command:


chmod +x convert_heic_to_jpg.sh

    Run the script: Navigate to the directory containing your HEIC files and run the script:

bash

./convert_heic_to_jpg.sh

The script will automatically find all files with the .heic or .HEIC extension in the current directory and convert them to .jpg, showing a progress update as it processes each file.
Features

    Case Insensitive: The script is capable of identifying files with .heic, .HEIC, and any other case variations of the file extension.
    Progress Indicator: Displays the conversion progress, showing how many files have been processed out of the total.

Limitations

    The script needs to be run in a directory containing HEIC files. It does not recursively search subdirectories.
    The script assumes ImageMagick is capable of handling HEIC files, which might require additional configuration or plugins on some systems.
