# IEEE SSCS Chipathon 2025 - MOSbius Track: Team FPTA

## Design of Amplifier Circuits using the MOSbius Architecture

<p align="center">
  <img src="https://img.shields.io/badge/Technology-gf180mcuD-blue?style=for-the-badge" alt="Chipathon 2025"/>
  <img src="https://img.shields.io/badge/Type-Analog IC Design-blueviolet?style=for-the-badge" alt="MOSbius Track"/>
  <img src="https://img.shields.io/badge/Project--Status-Planning-green?style=for-the-badge" alt="MOSbius Track"/>
  <img src="https://img.shields.io/badge/License-MIT-lime?style=for-the-badge" alt="License: MIT"/>
</p>

---

## Team Information and Background
* Jason Lyst - 2<sup>nd</sup> year undergraduate in Electrical and Computer Engineering at Purdue University
* Ushan Fernando - 4<sup>th</sup> year undergraduate in Electrical and Electronic Engineering at University of Nottingham Malaysia
* Sanithu Heengama - 3<sup>rd</sup> year undergraduate in Electrical Engineering at Brown University

---

## Prerequisites

Before you begin, you'll need to install the following software:

### 1. GitHub Desktop

- **Download**: [GitHub Desktop](https://desktop.github.com/)
- Available for Windows, macOS, and Linux
- Provides a user-friendly graphical interface for Git operations

You don't have to know how to use the git command. Although learning it helps you understand how the version control works. If you are an experienced user, feel free to manage your repository from CLI.

### 2. Docker Desktop

Docker is a lightweight, container-based alternative to virtual machines that ensures consistent development and deployment environments across different platforms by packaging applications with all their dependencies. Docker Desktop is its graphical user interface (GUI). 

**Download and Installation:**
- **Windows**: [Docker Desktop for Windows](https://docs.docker.com/desktop/install/windows-install/)
- **macOS**: [Docker Desktop for Mac](https://docs.docker.com/desktop/install/mac-install/)
- **Linux**: [Docker Desktop for Linux](https://docs.docker.com/desktop/install/linux-install/) or [Docker Engine](https://docs.docker.com/engine/install/)

**System Requirements:**
- **Windows**: Windows 10/11 with WSL2 enabled
- **macOS**: macOS 10.15 or newer
- **Linux**: 64-bit distribution with kernel 3.10+

In this project we will be using the IIC-OSIC-TOOLS docker (https://github.com/iic-jku/IIC-OSIC-TOOLS) to setup our development environments.

---

## Getting Started

### Step 1: Clone the Project Repository

1. Open GitHub Desktop
2. Click "Clone a repository from the Internet"
3. Select your newly created repository
4. Choose your local directory and click "Clone"

### Step 2: Launch the Docker Container

The project includes platform-specific scripts to launch the Docker container with the IIC-OSIC-TOOLS environment. Before running the following scripts, make sure your Docker Desktop is running. Launch the required script based on your operating system.

* **Mac/Unix/Linux Systems:** Open a terminal, navigate to your repository, and use the following command  `./start_chipathon.sh`
* **Windows Systems:** Open Command Prompt or Powershell, navigate to your repository, and use the following command `.\start_chipathon.bat`

### Step 3: Access the Design Environment

Once the container is running, you have two options to access the design environment:

**Option A: VNC Client (Recommended for better performance)**
1. Download a VNC client:
   - **Windows**: [TigerVNC](https://tigervnc.org) 
   - **macOS**: [TigerVNC](https://tigervnc.org)  or built-in Screen Sharing
   - **Linux**: `vncviewer` (install via package manager)

2. Connect to: `localhost:5901`
3. Enter password: `abc123`

**Option B: Web Browser (noVNC)**
1. Open your web browser
2. Navigate to: `http://localhost`
3. Enter password: `abc123`
4. Click "Connect"

### Step 4: Open a Terminal

Once you're in the VNC session:
1. Right-click on the desktop
2. Select "Terminal Emulator" (or similar option)
3. You should automatically be in the `/foss/designs` directory

### Step 5: Project Directory Structure

The `/foss/designs` directory inside the Docker container is mounted from the `designs` folder in this repository.

**Important:** Keep all your design files within the `designs` folder to ensure they persist when the Docker container is restarted.

```
project-root/
├── designs/              # Your design files (mounted in container as /foss/designs)
│   ├── libs/            # Design libraries
│   ├── simulations/     # Simulation results
│   └── setup_pdk.sh     # PDK setup script
├── start_vnc.sh         # Container launch script (Unix/Linux/Mac)
├── start_vnc.bat        # Container launch script (Windows)
└── README.md            # This file
```

### Step 6: Setup PDK Environment

Run the following command inside the terminal within the VNC session to set up the GlobalFoundries 180nm PDK:

```bash
source setup_pdk.sh
```

### Step 7: Launch Design Tools

Launch Xschem for schematic design:
```bash
xschem
```

You should see the Xschem GUI with available devices from `gf180mcu` and their testbenches.

---

## Troubleshooting

### Common Issues:

**Docker container fails to start:**
- Ensure Docker Desktop is running
- Check if ports 5901 and 80 are not in use by other applications
- On Windows, ensure WSL2 is properly configured

**Cannot connect via VNC:**
- Verify the container is running: `docker ps`
- Check firewall settings
- Try connecting to `127.0.0.1:5901` instead of `localhost:5901`

**Permission issues on Linux:**
- Add your user to the docker group: `sudo usermod -aG docker $USER`
- Log out and log back in

### Getting Help:

If you encounter issues:
1. Check the container logs: `docker logs <container-name>`
2. Restart the container: Stop and run the launch script again
3. Create an issue in the repository for persistent problems

---

## Library Structure Conventions

The project follows specific naming conventions for organizing design libraries under `/designs/libs/`:

### Directory Structure
```
/designs/libs/
├── core_*/          # Design libraries (core functionality)
├── tb_*/            # Testbench libraries
└── ...
```

### Naming Conventions
- **`core_*`**: Design libraries containing your core circuit implementations
- **`tb_*`**: Testbench libraries containing simulation and verification setups

### File Organization
Within each library directory:
- Each cell should have its own subdirectory: `/designs/libs/library_name/cell_name/`
- Files within a cell directory should be prefixed with the cell name (e.g., `cell_name.sch`, `cell_name.sym`)
- **Exception**: Testbench directories (starting with `tb_`) are exempt from the file naming prefix requirement

### Validation
Use the provided sanity check script to validate your library structure:
```bash
cd designs/CI
./library_check.sh
```

This script verifies:
- Proper directory hierarchy (no files at inappropriate levels)
- Correct file naming conventions for design libraries
- Exempts testbench libraries from strict naming requirements

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
