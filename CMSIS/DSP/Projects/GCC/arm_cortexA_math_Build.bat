@echo off

mkdir Temp
set TMP=Temp
set TEMP=Temp
set UVEXE=C:\Keil_v5\UV4\UV4.EXE

echo.
echo Building DSP Libraries GCC

echo   Building DSP Library for Cortex-A9 Little Endian with double precision FPU
%UVEXE% -rb -j0 arm_cortexM_math.uvprojx -t "cortexA9l"     -o "DspLib_cortexA9l_build.log"

echo   Building DSP Library for Cortex-A9 Little Endian with NEON FPU
%UVEXE% -rb -j0 arm_cortexM_math.uvprojx -t "cortexA9lneon"     -o "DspLib_cortexA9lneon_build.log"

echo.
echo   Deleting intermediate files
rmdir /S /Q Temp
rmdir /S /Q IntermediateFiles
del /Q *.bak
del /Q *.dep
del /Q *.uvguix.*
del /Q ArInp.*
