### 在工程中建立IP核并使用

1. 建立工程（按照之前的方法就行）
2. 导入文件
   - [x] 导入顶部模块文件
   - [x] 导入仿真文件
3. 创建模块
   - [ ] 创建时钟模块：`Clock Wizard`, `clk_div`
   - [ ] 创建储存模块：`Block Memory Generator`, `led_mem`，注意改参数
4. 建立文件`memory_w_r.v`，在里面实现一个名字为`memory_w_r`的模块。注意接口要和实验书一样。
5. 在`top_module`内连线
6. ……