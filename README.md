# Try To Stop It -- Part 2

> <b>Attention!</b>
Use of the code samples and proof-of-concepts shown here is permitted solely at your own risk for academic and non-malicious purposes. It is the end user's responsibility to comply with all applicable local, state, and federal laws. The developer assumes no liability and is not responsible for any misuse or damage caused by this tool and the software in general. 

## Requirements
- Installed [V-Compiler](https://github.com/vlang/v)
- Windows OS (test environment)

## Usage
* Download the binaries or clone the repository, build and run ```tryToStopIt.v```.

## What it is and how it works
The malware has a strong DoS behavior. It launches endless loops, which in turn launch endless new threads, which endlessly create new files and execute them.
**!Test this only in a virtual machine!**
To create the symlink for Autostart, run ```tryToStopIt.exe``` elevated.

* tryToStopIt.exe 
    -> creates symlink in Autostart, executes endless creation and execution of endless.exe 
* endless.exe
    -> endless thread creation, count to infinity in each of them.
* tob64.v 
    -> if code of endless.v is changed, get the new base64 string