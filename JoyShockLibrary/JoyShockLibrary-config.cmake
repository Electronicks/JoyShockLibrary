# ...
# (compute PREFIX relative to file location)
# ...
set(JoyShockLibrary_INCLUDE_DIRS ${PREFIX}/JoyShockLibrary)
set(JoyShockLibrary_LIBRARY ${PREFIX}/JoyShockLibrary/JoyShockLibrary.dll)

install(FILES JoyShockLibrary.dll DESTINATION JoyShockLibrary)