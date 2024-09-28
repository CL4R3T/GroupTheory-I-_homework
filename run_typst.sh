#!/bin/bash

# 创建一个目录来存放所有生成的pdf文件
output_dir="pdf_outputs"
mkdir -p "$output_dir"

# 遍历当前目录下所有以HW开头的子目录
for dir in HW*; do
    # 检查是否是一个目录
    if [ -d "$dir" ]; then
        # 构建文件名，假设.typ文件名是子目录名加上后缀_Sol.typ
        typ_file="$dir/${dir}_Sol.typ"
        
        # 检查.typ文件是否存在
        if [ -f "$typ_file" ]; then
            echo "Processing $typ_file ..."
            # 使用typst compile命令编译.typ文件为pdf
            typst compile "$typ_file" --root ../

            # 移动生成的pdf文件到output目录，假设pdf文件和typ文件同名
            pdf_file="${typ_file%.typ}.pdf"
            if [ -f "$pdf_file" ]; then
                mv "$pdf_file" "$output_dir/"
            else
                echo "Failed to generate PDF for $typ_file"
            fi
        else
            echo "File $typ_file does not exist."
        fi
    fi
done

# 打包所有生成的pdf文件为zip
zip -r compiled_pdfs.zip "$output_dir"
