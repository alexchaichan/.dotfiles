# [R](https://www.r-project.org/)

R is a free software environment for statistical computing and graphics. It compiles and runs on a wide variety of UNIX platforms, Windows and MacOS

*I use R mainly for Data science*

In short, you need at the very least Xcode and a Fortran compiler. R 4.3.0 and higher use universal GNU Fortran 12.2 compiler. 
You can download an installer package [gfortran-12.2-universal.pkg](https://mac.r-project.org/tools/gfortran-12.2-universal.pkg)  - for more details and other download options see [R-macos GNU Fortran releases on GitHub](https://github.com/R-macos/gcc-12-branch/releases).

```{bash}
cd $HOME/Downloads && wget https://mac.r-project.org/tools/gfortran-12.2-universal.pkg ; cd

package_file="$(ls $HOME/Downloads/gfort*)" 

installer -pkg $package_file -target /opt/gfortran/bin/gfortran

rm $package_file
```