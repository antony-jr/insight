# Insight [![Build Status](https://travis-ci.org/antony-jr/insight.svg?branch=master)](https://travis-ci.org/antony-jr/insight)
 
**Insight** is a graphical user interface to **GDB**, the **GNU Debugger** written in **Tcl/Tk** by people working at **Red Hat, Inc**. and **Cygnus Solutions**. Red Hat has generously **donated** Insight to the **public** and even pays a few people to work on it occasionally.

But one problem exists , Insight is hard to get **now** and a lot of people might want it because **Jeff** exclusively uses it in his
**book** namely **'Assembly Language Step by Step Programming with Linux'** and so did I , Therefore I built an **appimage** for insight and so other folks who stumbles upon the same problem don't want to wreck their head on compiling insight from source.
Infact you **don't even have to install anything** , **Just download a binary and mark it executable**.

<p align="center">
 <table>
   <tr>
     <th >DOWNLOAD<br></th>
     <th >INSTALL</th>
   </tr>
   <tr>
     <td >
     <a href="https://github.com/antony-jr/insight/releases/download/continuous/Insight-continuous-x86_64.AppImage">
     <img src="https://img.shields.io/badge/Download-Insight--continuous--x86--64.AppImage-green.svg?longCache=true&style=for-the-badge" alt="Download" /  >
     </a>
     </td>
     <td>
     <pre>
      $ chmod +x Insight-continuous-x86_64.AppImage
      $ ./Insight-continuous-x86_64.AppImage
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

**Important Note:** Please use **absolute paths** when using command line arguments like ``` -q ./YourApp ```.   
If you want support for **32 bits** then rise a issue because nowadays mordern pc's are not **32 bits** but the I'm
reading is dealing with **IA-32** , Irony!

# License

Only the scripts and source files used to build and upload the appimage is under , **The MIT License.**   
Copyright (C) 2018 Antony Jr.
