How to copy folder structure without copying the files.


For example I have the following folder structure:
sandbox
  +-beach
    +-sand
    +-rocks


1. Create a folder where you want to copy the folders
2. Go to the folder you want to copy
3. Execute the following:
```find sandbox -type d -exec mkdir sandbox2/\{\} \;```

The following will be created:
sandbox2
  +-beach
    +-sand
    +-rocks