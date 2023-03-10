set FPSCI_VERSION=v23.01.03

@REM Get FPSci build
echo Downloading FPSci
curl -LO https://github.com/NVlabs/FPSci/releases/download/%FPSCI_VERSION%/FPSci.%FPSCI_VERSION%.zip
echo Extracting FPSci
mkdir FPSci
tar -xf FPSci.%FPSCI_VERSION%.zip -C FPSci\
echo Removing FPSci zip
del FPSci.%FPSCI_VERSION%.zip

@REM Copy configs over

echo Copying configs over
xcopy configs\*.Any FPSci\ /Y
