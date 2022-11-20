# Insight [![Deploy](https://github.com/antony-jr/insight/actions/workflows/deploy.yml/badge.svg)](https://github.com/antony-jr/insight/actions/workflows/deploy.yml)
 
**Insight** is a graphical user interface to **GDB**, the **GNU Debugger** written in **Tcl/Tk** by people working at **Red Hat, Inc**. and **Cygnus Solutions**. Red Hat has generously **donated** Insight to the **public** and even pays a few people to work on it occasionally.

But one problem exists , Insight is hard to get **now** and a lot of people might want it because **Jeff** exclusively uses it in his
**book** namely **'Assembly Language Step by Step Programming with Linux'** and so did I , Therefore I built an **appimage** for insight and so other folks who stumbles upon the same problem don't have to wreck their head on compiling insight from source.
Infact you **don't even have to install anything** , **Just download a binary and mark it executable**.

Download the **binary** and **mark it executable** as mentioned in the **table below** , This **does not depend on anything**
this can even run in a live boot **without installing anything**, Have fun!

**Note**: If the version below did not work try a older version which can be downloaded from the releases page. You can also download experimental AppImages from **Development Builds** in the releases page.


<p align="center">
 <table>
   <tr>
     <th >DOWNLOAD<br></th>
     <th >EXECUTE</th>
   </tr>
   <tr>
     <td >
     <a href="https://github.com/antony-jr/insight/releases/download/5afb39f/Insight-x86_64-pc-linux-gnu-5afb39f-x86_64.AppImage">
     <img src="https://img.shields.io/badge/DOWNLOAD-Insight%20(Target%20x86__64)-green" alt="Download" /  >
     </a>
     </td>
     <td>
     <pre>
      $ chmod +x Insight-x86_64-pc-linux-gnu-5afb39f-x86_64.AppImage
      $ ./Insight-x86_64-pc-linux-gnu-5afb39f-x86_64.AppImage
     </pre>
     </td>
   </tr>
   <tr>
     <td >
     <a href="https://github.com/antony-jr/insight/releases/download/5afb39f/Insight-arm-linux-gnueabi-5afb39f-x86_64.AppImage">
     <img src="https://img.shields.io/badge/DOWNLOAD-Insight%20(Target%20ARM)-green" alt="Download" /  >
     </a>
     </td>
     <td>
     <pre>
      $ chmod +x Insight-arm-linux-gnueabi-5afb39f-x86_64.AppImage
      $ ./Insight-arm-linux-gnueabi-5afb39f-x86_64.AppImage
     </pre>
     </td>
   </tr>
</table>
</p>

<p align=center>
<img src=.img/screenshot.png height=auto width=auto alt="Insight Debugger"> 
</p>

# Installation

Just execute this single line of command in the terminal of your linux distro to install
insight into system, this integrates Insight into application menu also your path so you
can use insight just like you installed from a package manager.

```
  curl -Ls "https://raw.githubusercontent.com/antony-jr/insight/master/install.sh" | bash -s
```

Use like this,

```
 insight your_executable
```

# Updating Insight

Delta update your Insight since each release of Insight is getting huge.

```
 curl -Ls "https://raw.githubusercontent.com/antony-jr/insight/master/update.sh" | bash -s
```

# Upstream Repo

Thanks to **redhat**, Insight's git repo is still kept alive at ```git://sourceware.org/git/insight.git```.   
But be **warned that building it from source is very challenging when its done in a modern os** and also requires you 
to provide **Tcl/Tk** libraries externally. *I bet you will be satisfied with the portable binary*.

# Acknowledgements

This portable package is only possible because of these projects , do check them out.

* **[Assembly Step by Step](https://www.amazon.com/Assembly-Language-Step-Step-Programming/dp/0470497025)** - Inspiration to make this project.
* **[AppImage](https://github.com/appimage/)** - Used to package the portable binary.
* **[Insight/RedHat](https://sourceware.org/insight/)** - Thanks to RedHat for keeping this alive to this date.

# License

Only the **patches** and **build scripts** are under , **The MIT License.**   
Copyright (C) 2018 Antony Jr.
