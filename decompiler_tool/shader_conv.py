import os
import subprocess
import sys

def disassemble_shaders(shader_dump_folder, output_folder, air_conv_executable):
    """
    Disassembles all .cso shaders in the given folder using air_conv.

    Args:
        shader_dump_folder: Path to the folder containing the .cso shader files.
        output_folder: Path to the folder where disassembled output files will be stored.
        air_conv_executable: Path to the air_conv executable.
    """

    air_conv_executable = os.path.abspath(air_conv_executable)
    shader_dump_folder = os.path.abspath(shader_dump_folder)
    output_folder = os.path.abspath(output_folder)
    
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    for filename in os.listdir(shader_dump_folder):
        if filename.endswith(".cso"):
            input_path = os.path.join(shader_dump_folder, filename)
            output_path = os.path.join(output_folder, filename.replace(".cso", ".txt"))

            command = [
                air_conv_executable,
                "--disas-dxbc",
                input_path,
                "-o",
                output_path,
            ]

            try:
                subprocess.run(command, check=True, capture_output=True, text=True)
                print(f"Successfully disassembled {filename} to {output_path}")
            except subprocess.CalledProcessError as e:
                print(f"Error disassembling {filename}:")
                print(e.stderr)


if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python disassemble_script.py <shader_dump_folder> <output_folder> <air_conv_executable>")
        sys.exit(1)

    shader_dump_folder = sys.argv[1]
    output_folder = sys.argv[2]
    air_conv_executable = sys.argv[3]

    disassemble_shaders(shader_dump_folder, output_folder, air_conv_executable)
