add_rules("mode.debug", "mode.release")

toolchain("aarch64-none-elf")
    set_kind("cross")
    on_load(function (toolchain)
        toolchain:load_cross_toolchain()
    end)
toolchain_end()

add_repositories("xswitch-repo https://github.com/HelloEngine/xswitch-repo.git main")
add_requires("devkit-a64", "libnx", "switch-glad")

target("simple_triangle")
    set_toolchains("aarch64-none-elf@devkit-a64")
    set_kind("binary")
    add_packages("libnx", "switch-glad")
    add_rules("@libnx/switch")

    add_files("source/main.cpp")

    add_values("version", "1.0.1")
    add_values("apptitle", "simple_triangle")
    add_values("author", "HelloWorld886")
    add_values("icon", "opengl_logo.jpg")

