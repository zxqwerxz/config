This Repo Contains Settings That I Like To Use for Installations
----------------------------------------------------------------

Ubuntu 14.04 Vbox Installation
------------------------------

### Installing Guest Utils for adjustable screen size ###

[See instructions at this link](http://www.binarytides.com/vbox-guest-additions-ubuntu-14-04/)

#### Step 1. Get the guest-utils disk image ####

IDK if I had to do this or not. I can't really remember, but on my windows laptop, it's already there.

#### Step 2. First install kernel headers and build tools: ####

    sudo apt-get install build-essential module-assistant
    sudo m-a prepare

#### Step 3. Install guest-utils disk image.####

You need to find the devices menu on the virtualbox window. If you managed to change the view to scaling 
earlier, you will need to reobtain that menu pane by pressing (right ctrl)+c

Now click "Devices > Insert guest additions CD image" in the virtualbox window.

Follow the instructions

#### Step 4. Logout and Login ####

Self explanatory. The key thing to using this after logging in is understanding the "Host Key", which on 
my machine is the right control key. (Right Control)+f, for instance, sets things into full screen.

The instructions link above includes some steps on manual mounting, but from my experience it has worked
fine without it.

### Setting up a sym link to the host computer folder ###

I like to keep all of my code in a src folder for each machine. Since a lot of code is shared between each
vbox instance, it is convenient for me to share that folder and keep it on my windows host. This sectio
describes how to set up a shared folder.

#### Step 1: Set up folder on host machine ####

I like to make an src folder on  C:\src

Not sure if I had to do some special permission business. I don't remember if I did or not.

#### Step 2: Set up shared folder on vbox ####

Click Devices > Shared folder settings on the virtualbox window. Click the plus icon on the right side and 
select the directory from the host OS that you want to share with the guest OS.

I choose make permanent and automatically mount

#### Step 3: Add yourself to the vbox usergroup ####

    sudo usermod -aG vboxsf <youruser>
  
Then logout and log back in.

#### Step 4: Set up symlink ####

First check if the the shared folder mounting worked. Check:

    ls /media

You should see a directory that looks like: "sf_{directory_name}" which
is the name of your shared folder.

To create a symlink, in your home directory:

    ln -s {/path/to/file-name} {link-name}
