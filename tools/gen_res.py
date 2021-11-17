#!/usr/bin/env python3
import os
import sys
from PIL import Image


def gen_res_code(gen_code_path, class_name, relative_assets_parent_path, assets_path):
    from_path = relative_assets_parent_path + '/' + assets_path
    to_path = gen_code_path
    clazz = 'class ' + class_name + ' {\n\t' + class_name + '._();\n'
    sort = sorted(os.listdir(from_path))
    for name in sort:
        if os.path.isdir(from_path + '/' + name):
            continue
        clazz += "  static const String {} = '{}/{}';\n".format(
            name.split('.')[0].replace('-', '_'), assets_path, name)
    clazz += '}\n'
    with open(to_path, 'w') as f:
        f.write(clazz)
    print('from {} to {}'.format(from_path, to_path))
    print(clazz)


def convert_png_to_webp(raw_path):
    im = Image.open(raw_path).convert("RGBA")
    f = raw_path.replace("/assets/rawImage", "/assets/img").replace(".png", ".webp")
    im.save(f, "webp")


def handle_all_png(root_path):
    f = os.listdir(root_path)
    for name in f:
        if 'DS_Store' in name:
            continue
        path = root_path + '/' + name
        if os.path.isfile(path):
            convert_png_to_webp(path)
        else:
            handle_all_png(path)


if __name__ == '__main__':
    handle_all_png(sys.path[0] + "/../assets/rawImage")
    gen_res_code(sys.path[0] + '/../lib/resources/img.g.dart', 'ImgRes', sys.path[0] + '/..', 'assets/img')
