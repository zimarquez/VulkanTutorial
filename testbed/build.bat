REM Build script for testbed
@ECHO OFF
SetLocal EnableDelayedExpansion

REM Get a list of all the .c files.
SET cFilenames=
FOR /R %%f in (*.cpp) do (
    SET cFilenames=!cFilenames! %%f
)

REM echo "Files:" %cFilenames%

SET assembly=testbed
SET compilerFlags=-g 
REM -Wall -Werror
SET includeFlags=-Isrc -I../engine/src/ -I../dependencies/ -I%VULKAN_SDK%/include
SET linkerFlags=-L../bin/ -lengine.lib -L../bin/lib-vc2019/ -lglfw3dll.lib -L%VULKAN_SDK%/Lib/ -lvulkan-1.lib
SET defines=-DKIMPORT

ECHO "Building %assembly%%..."
clang %cFilenames% %compilerFlags% -o ../bin/%assembly%.exe %defines% %includeFlags% %linkerFlags%