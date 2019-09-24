:: build
cargo install --locked --root "%PREFIX%" --path . || goto :error

:: strip debug symbols
strip "%PREFIX%\bin\hexyl.exe" || goto :error
goto :EOF

:error
echo Failed with error #%errorlevel%.
exit 1
