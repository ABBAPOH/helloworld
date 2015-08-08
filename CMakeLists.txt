cmake_minimum_required(VERSION 2.8)

if(APPLE)
    set(NAME HelloWorld)
else()
    set(NAME helloworld)
endif()

project(${NAME})

find_package(Qt5Core)
find_package(Qt5Gui)
find_package(Qt5Widgets)

set(CMAKE_AUTOMOC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

file(GLOB SOURCES "*.cpp")
file(GLOB HEADERS "*.h")
file(GLOB FORMS "*.ui")

qt5_wrap_ui(FORMS_HEADERS ${FORMS})

add_executable(${NAME} ${SOURCES} ${HEADERS} ${FORMS_HEADERS})
qt5_use_modules(${NAME} Core Gui Widgets)
