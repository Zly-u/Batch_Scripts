import subprocess, sys, os, re

out_prefix = "_c"

def main():
    if len(sys.argv) <= 2:
        print("No file was provided!")
        os.system("pause")
        return

    new_ext = sys.argv[1]

    for arg in sys.argv[2:]:
        old_ext = re.search("(\..+)$", arg)

        if not old_ext:
            print("file has no extension.")
            continue

        new_path_to_file_noExt = arg[:-len(old_ext.group(1))]

        subprocess.run(["ffmpeg", "-y", "-i", arg, new_path_to_file_noExt+out_prefix+"."+new_ext])

    print("\n [[ ======= !!!!DONE!!!! ======= ]]\n")
    os.system("pause")

main()