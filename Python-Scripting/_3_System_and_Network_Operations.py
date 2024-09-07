import os
import shutil
import subprocess


# Finds files in a system’s database
def locate(pattern):
    return subprocess.run(['locate', pattern], capture_output=True, text=True).stdout

# Outputs a file or folder’s location
def find(path, name):
    return subprocess.run(['find', path, '-name', name], capture_output=True, text=True).stdout

# Runs a command as a superuser
def sudo(command):
    return subprocess.run(['sudo'] + command, capture_output=True, text=True).stdout

# Runs programs in the current shell as another user
def su(user, command):
    return subprocess.run(['su', user, '-c', command], capture_output=True, text=True).stdout

# Modifies a file’s read, write, and execute permissions
def chmod(path, mode):
    os.chmod(path, int(mode, 8))

# Changes a file, directory, or symbolic link’s ownership
def chown(path, user, group):
    shutil.chown(path, user, group)

# Creates and removes a user account
def useradd(username):
    subprocess.run(['sudo', 'useradd', username])

def userdel(username):
    subprocess.run(['sudo', 'userdel', username])

# Displays the system’s overall disk space usage
def df():
    return subprocess.run(['df', '-h'], capture_output=True, text=True).stdout

# Checks a file or directory’s storage consumption
def du(path='.'):
    return subprocess.run(['du', '-sh', path], capture_output=True, text=True).stdout

# Displays running processes and the system’s resource usage
def top():
    subprocess.run(['top'])

def htop():
    subprocess.run(['htop'])

# Creates a snapshot of all running processes
def ps():
    return subprocess.run(['ps', 'aux'], capture_output=True, text=True).stdout

# Prints information about your machine’s kernel, name, and hardware
def uname():
    return subprocess.run(['uname', '-a'], capture_output=True, text=True).stdout

# Shows your system’s hostname
def hostname():
    return subprocess.run(['hostname'], capture_output=True, text=True).stdout

# Calculates commands’ execution time
def time(command):
    return subprocess.run(['time'] + command, capture_output=True, text=True).stdout

# Manages system services
def systemctl(command):
    return subprocess.run(['systemctl'] + command, capture_output=True, text=True).stdout

# Runs another command continuously
def watch(command):
    subprocess.run(['watch'] + command)

# Displays a shell’s running processes with their statuses
def jobs():
    return subprocess.run(['jobs'], capture_output=True, text=True).stdout

# Terminates a running process
def kill(pid):
    os.kill(pid, signal.SIGTERM)

# Turns off or restarts the system
def shutdown(option):
    subprocess.run(['sudo', 'shutdown', option])

# Checks the system’s network connectivity
def ping(host):
    return subprocess.run(['ping', '-c', '4', host], capture_output=True, text=True).stdout

# Downloads files from a URL
def wget(url, output_path='.'):
    subprocess.run(['wget', '-P', output_path, url])

# Transmits data between servers using URLs
def curl(url):
    return subprocess.run(['curl', url], capture_output=True, text=True).stdout

# Securely copies files or directories to another system
def scp(src, dst):
    subprocess.run(['scp', src, dst])

# Synchronizes content between directories or machines
def rsync(src, dst):
    subprocess.run(['rsync', '-avz', src, dst])

# Displays the system’s network interfaces and their configurations
def ifconfig():
    return subprocess.run(['ifconfig'], capture_output=True, text=True).stdout

# Shows the system’s network information, like routing and sockets
def netstat():
    return subprocess.run(['netstat', '-tuln'], capture_output=True, text=True).stdout

# Tracks a packet’s hops to its destination
def traceroute(host):
    return subprocess.run(['traceroute', host], capture_output=True, text=True).stdout

# Queries a domain’s IP address and vice versa
def nslookup(domain):
    return subprocess.run(['nslookup', domain], capture_output=True, text=True).stdout

# Displays DNS information, including record types
def dig(domain):
    return subprocess.run(['dig', domain], capture_output=True, text=True).stdout

# Lists previously run commands
def history():
    return subprocess.run(['history'], capture_output=True, text=True).stdout

# Shows a command’s manual
def man(command):
    subprocess.run(['man', command])

# Prints a message as a standard output
def echo(message):
    return message

# Links files or directories
def ln(src, dst):
    os.link(src, dst)

# Sets and removes an alias for a file or command
def alias(name, command):
    os.system(f'alias {name}="{command}"')

def unalias(name):
    os.system(f'unalias {name}')

# Displays a calendar in Terminal
def cal():
    return subprocess.run(['cal'], capture_output=True, text=True).stdout

# Manages Debian-based distros package libraries
def apt_get_update():
    subprocess.run(['sudo', 'apt-get', 'update'])

def apt_get_install(package):
    subprocess.run(['sudo', 'apt-get', 'install', '-y', package])
