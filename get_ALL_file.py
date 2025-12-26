### 递归生成目录树形结构并写入文件，默认生成当前目录下的所有文件和文件夹，写入tree.txt文件中
### 如果想要限制目录遍历的最大深度，可以修改代码中对应的注释部分

import os

def generate_directory_tree(start_path, output_file, ignore_hidden=True):
    """
    递归生成目录树形结构并写入文件
    
    Args:
        start_path: 起始目录路径
        output_file: 输出文件路径
        ignore_hidden: 是否忽略隐藏文件/文件夹（以.开头的）
    """
    # 规范化路径，处理不同系统的路径分隔符
    start_path = os.path.abspath(start_path)
    
    # 获取起始目录的最后一级名称（用于显示根节点）
    root_name = os.path.basename(start_path)
    
    try:
        with open(output_file, 'w', encoding='utf-8') as f:
            # 写入根目录名称
            f.write(f"{root_name}/\n")
            
            # ===================== 目录深度控制配置 =====================
            # 1. 如果你想限制遍历深度，请取消下面对应行数的注释
            # 2. 根目录为第0级，根目录下的直接子目录为第1级，以此类推
            # 3. 示例：
            #    - 限制三级目录：取消 MAX_DEPTH = 3 的注释
            #    - 限制四级目录：取消 MAX_DEPTH = 4 的注释
            #    - 不限制深度：保持所有 MAX_DEPTH 行都注释
#---------------------------------------------------------------------------------------------   
            #可以通过取消注释以下行来限制目录遍历的最大深度
                     
            # MAX_DEPTH = 3  # 限制只遍历到三级目录（根+2级子目录）
            # MAX_DEPTH = 4  # 限制只遍历到四级目录（根+3级子目录）
            
#-------------------------------------------------------------------------------------------
            # ==========================================================
            
            # 递归遍历目录（增加depth参数记录当前层级）
            def walk_directory(current_path, prefix="", depth=1):
                # 判断是否超过设定的最大深度（如果启用了深度限制）
                if 'MAX_DEPTH' in locals() and depth > MAX_DEPTH:
                    return
                
                # 获取当前目录下的所有条目（文件/文件夹）
                entries = os.listdir(current_path)
                
                # 过滤隐藏文件/文件夹（可选）
                if ignore_hidden:
                    entries = [e for e in entries if not e.startswith('.')]
                
                # 按名称排序，让输出更整齐
                entries.sort()
                
                # 遍历所有条目
                for index, entry in enumerate(entries):
                    entry_path = os.path.join(current_path, entry)
                    # 判断是否是最后一个条目（用于树形符号显示）
                    is_last = index == len(entries) - 1
                    
                    # 树形结构符号
                    if is_last:
                        symbol = "└── "
                        new_prefix = prefix + "    "
                    else:
                        symbol = "├── "
                        new_prefix = prefix + "│   "
                    
                    # 写入当前条目
                    f.write(f"{prefix}{symbol}{entry}")
                    
                    if os.path.isdir(entry_path):
                        # 如果是文件夹，添加斜杠并换行
                        f.write("/\n")
                        # 递归遍历子文件夹，层级+1
                        walk_directory(entry_path, new_prefix, depth + 1)
                    else:
                        # 如果是文件，直接换行
                        f.write("\n")
            
            # 开始递归遍历（初始层级为1，对应根目录下的第一级子目录）
            walk_directory(start_path)
        
        print(f"目录树已成功生成到 {output_file} 文件中！")
        
    except PermissionError:
        print(f"错误：没有权限访问某些文件/文件夹，请检查权限。")
    except Exception as e:
        print(f"发生错误：{str(e)}")

if __name__ == "__main__":
    # 获取当前目录
    current_dir = os.getcwd()
    # 输出文件名称
    output_file = "tree.txt"
    
    # 生成目录树
    generate_directory_tree(current_dir, output_file)