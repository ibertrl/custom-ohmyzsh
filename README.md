<h1><strong>Custom-OhMyZsh</strong>
</h1><h2>Description</h2>
<p>This Bash script installs and configures a <strong>customized</strong> shell environment for use in <strong>pentesting projects</strong>. 
It is built around the <strong>Oh My Zsh</strong> framework, a popular open-source community-driven framework for managing your Zsh configuration. 
The script installs the framework and sets up the <strong>Agnoster theme</strong>, a popular shell theme that provides useful information about your system in the prompt.</p>
<p>In addition to the Agnoster theme, the script installs and configures several <strong>Zsh plugins</strong> that are commonly used in pentesting projects. 
These plugins include:</p><ul><li><strong>zsh-autosuggestions</strong>: a plugin that suggests commands as you type based on your command history</li>
<li><strong>zsh-syntax-highlighting</strong>: a plugin that highlights syntax errors in your command line input</li><li><strong>zsh-completions</strong>
: a plugin that provides auto-completion for commands, options, and arguments</li></ul><p>The script also adds two <strong>custom functions</strong>
to your Zsh configuration:</p><ul><li><strong>extractPorts()</strong>: a function that extracts open ports from an Nmap scan and displays them on the terminal. 
It also copies the list of open ports to your clipboard.</li><li><strong>mkt()</strong>: a function that creates a set of directories for organizing your 
pentesting project files. These directories include nmap, content, exploits, and scripts.</li></ul><p>Finally, the script installs the <strong>xclip package</strong>
, a utility that allows you to copy and paste data between the command line and the clipboard.</p><h2>Purpose</h2><p>The purpose of this script is to help 
<strong>pentesters</strong> set up a standardized and efficient shell environment for managing their projects. By installing and configuring Oh My Zsh, 
the script provides a powerful framework for managing your Zsh configuration and customizing your shell environment. The included plugins and custom functions 
help to streamline your workflow, making it easier to work efficiently and effectively on your projects.</p><h2>Usage</h2><p>To use this script, make the script executable by running the command <code>chmod +x install.sh</code>. Then, run the script using the command <code>./install.sh</code>.</p><p>After running the script, reload your terminal to apply 
the changes to your shell. You should now have a fully configured shell environment with the Agnoster theme, several useful Zsh plugins, and custom functions 
for extracting open ports and creating project directories.</p><p>Overall, this script provides a <strong>convenient</strong> and <strong>efficient</strong> 
way to set up your shell environment for pentesting projects, allowing you to focus on the actual work of testing and securing systems.</p>



<code>*For the installation and configuration to work correctly, you have to run it 2 times, otherwise the configuration will not continue after the installation of Oh-My-Zsh</code>
