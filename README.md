# Insight [![Build Status](https://travis-ci.org/antony-jr/insight.svg?branch=master)](https://travis-ci.org/antony-jr/insight)
 
**Insight** is a graphical user interface to **GDB**, the **GNU Debugger** written in **Tcl/Tk** by people working at **Red Hat, Inc**. and **Cygnus Solutions**. Red Hat has generously **donated** Insight to the **public** and even pays a few people to work on it occasionally.

But one problem exists , Insight is hard to get **now** and a lot of people might want it because **Jeff** exclusively uses it in his
**book** namely **'Assembly Language Step by Step Programming with Linux'** and so did I , Therefore I built an **appimage** for insight and so other folks who stumbles upon the same problem don't have to wreck their head on compiling insight from source.
Infact you **don't even have to install anything** , **Just download a binary and mark it executable**.

Download the **binary** and **mark it executable** as mentioned in the **table below** , This **does not depend on anything**
this can even run in a live boot **without installing anything**, Have fun!

<p align="center">
 <table>
   <tr>
     <th >DOWNLOAD<br></th>
     <th >INSTALL</th>
   </tr>
   <tr>
     <td >
     <a href="https://github.com/antony-jr/insight/releases/download/continuous/Insight-_9ce4fd1-x86_64.AppImage">
     <img src="https://img.shields.io/badge/Download-Insight--_9ce4fd1--x86--64.AppImage-green.svg?longCache=true&style=for-the-badge" alt="Download" /  >
     </a>
     </td>
     <td>
     <pre>
      $ chmod +x Insight-_9ce4fd1-x86_64.AppImage
      $ ./Insight-_9ce4fd1-x86_64.AppImage
     </pre>
     </td>
   </tr>
 </table>
</p>

<p align=center>
<img src=.img/screenshot.png height=auto width=auto alt="Insight Debugger"> 
</p>


> A Tcl/Tk Frontend for GDB. This is a portable package of insight for the sake of Jeff Duntemann's amazing book.
> -- Antony Jr.


**Important note:** Please use **absolute paths** when using command line arguments like ``` -q ./YourApp ```.   

If you want support for **32 bits** then rise a issue because nowadays modern pc's are not **32 bits** but **Jeff Duntemann's** book is dealing with **IA-32** where this tool is required , Irony!


# Upstream Repo

Thanks to **redhat**, Insight's git repo is still kept alive at ```git://sourceware.org/git/insight.git```.   
But be **warned that building it from source is very challenging when its done in a modern os** and also requires you 
to provide **Tcl/Tk** libraries externally. *I bet you will be satisfied with the portable binary*.

# Acknowledgements

This portable package is only possible because of these projects , do check them out.

* **[Assembly Step by Step](https://www.amazon.com/Assembly-Language-Step-Step-Programming/dp/0470497025)** - Inspiration to make this project.
* **[AppImage](https://github.com/appimage/)** - Used to package the portable binary.
* **[Travis-CI](https://travis-ci.org)** - Used to build insight with an old version of ubuntu.
* **[Insight/RedHat](https://sourceware.org/insight/)** - Thanks to RedHat for keeping this alive to this date.

# License

Only the **patches** and **build scripts** are under , **The MIT License.**   
Copyright (C) 2018 Antony Jr.
