add_rules("mode.debug", "mode.release")
set_allowedplats("cross")

add_repositories("xswitch-repo https://github.com/HelloEngine/xswitch-repo.git main")
add_requires("devkit-a64", "libnx", "switch-glad")

target("simple_triangle")
    set_toolchains("cross@devkit-a64")
    set_kind("binary")
    add_packages("devkit-a64", "libnx", "switch-glad")
    add_rules("@devkit-a64/aarch64", "@libnx/switch")

    add_files("source/main.cpp")

    add_values("version", "1.0.1")
    add_values("apptitle", "simple_triangle")
    add_values("author", "HelloWorld886")
    add_values("icon", "opengl_logo.jpg")

