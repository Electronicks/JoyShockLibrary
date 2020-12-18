add_library (
    ${PROJECT_NAME} SHARED
    JoyShockLibrary.cpp    JoyShockLibrary.h
)

target_include_directories (
    ${PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)

set_target_properties(${PROJECT_NAME} PROPERTIES PUBLIC_HEADER ${PROJECT_NAME}/${PROJECT_NAME}.h)

#CPMAddPackage (
#    NAME steam_controller
#    GITHUB_REPOSITORY "Electronicks/steam_controller"
#	GIT_TAG d36f2eb7623adbc9992123a3af04532e0740e9cb
#)

add_subdirectory("../../steam_controller" "../../../steam_controller/build")


target_link_libraries (
${PROJECT_NAME} ${JSL_PLATFORM_DEPENDENCY_VISIBILITY}
    JSL_Platform::Dependencies
    steam_controller
)

install(TARGETS ${PROJECT_NAME}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})
	
#install(FILES ${CMAKE_BINARY_DIR}/mylib.pc DESTINATION ${CMAKE_INSTALL_DATAROOTDIR}/pkgconfig)