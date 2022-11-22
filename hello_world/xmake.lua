--set_allowedplats("cross")

-- target("hello_world")
--     set_kind("binary")
--     add_packages("devkit-a64", "libnx")
--     add_rules("@devkit-a64/compile.flags", "@libnx/gen.elf" ,"@libnx/gen.nro")

--     add_files("source/main.c")

add_repositories("xswitch-repo https://github.com/HelloEngine/xswitch-repo.git main")
add_requires("devkit-a64", "libnx")

target("hello_world")
    set_toolchains("cross@devkit-a64")
    set_kind("binary")
    add_packages("devkit-a64", "libnx")
    add_rules("@devkit-a64/aarch64", "@libnx/switch")

    add_files("source/main.c")