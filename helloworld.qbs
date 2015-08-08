import qbs.base 1.0

Application {
   name: qbs.targetOS.contains("osx") ? "HelloWorld" : "helloworld"

   Depends { name: "cpp" }
   Depends { name: "Qt"; submodules: ["core", "gui", "widgets"] }

   files: [ "*.cpp", "*.h", "*.ui" ]
}
