import nimib
import strformat
import strutils
import times

# 初始化文档
nbInit

# 使用nbText来添加CSS样式（兼容旧版本）
nbText: """
<style>
:root {
  --primary-color: #2c3e50;
  --secondary-color: #3498db;
  --accent-color: #e74c3c;
  --success-color: #27ae60;
  --warning-color: #f39c12;
}

body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  line-height: 1.6;
  color: #333;
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px;
}

.content-wrapper {
  background: white;
  border-radius: 15px;
  padding: 2rem;
  box-shadow: 0 10px 30px rgba(0,0,0,0.1);
  margin-bottom: 2rem;
}

.header {
  background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
  color: white;
  padding: 3rem 2rem;
  border-radius: 12px;
  margin-bottom: 2rem;
  text-align: center;
}

.feature-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 1.5rem;
  margin: 2rem 0;
}

.feature-card {
  background: #f8f9fa;
  border: 1px solid #e9ecef;
  border-radius: 12px;
  padding: 1.5rem;
  transition: all 0.3s ease;
}

.feature-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 25px rgba(0,0,0,0.15);
}

.code-block {
  background: #1e1e1e;
  color: #d4d4d4;
  border-radius: 12px;
  padding: 1.5rem;
  margin: 1.5rem 0;
  overflow-x: auto;
  border-left: 6px solid var(--secondary-color);
  font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
}

.warning {
  background: #fff3cd;
  border: 1px solid #f39c12;
  border-radius: 10px;
  padding: 1.5rem;
  margin: 1.5rem 0;
  border-left: 6px solid #f39c12;
}

.success {
  background: #d1f2eb;
  border: 1px solid #27ae60;
  border-radius: 10px;
  padding: 1.5rem;
  margin: 1.5rem 0;
  border-left: 6px solid #27ae60;
}

.error {
  background: #fadbd8;
  border: 1px solid #e74c3c;
  border-radius: 10px;
  padding: 1.5rem;
  margin: 1.5rem 0;
  border-left: 6px solid #e74c3c;
}

.operation-table {
  width: 100%;
  border-collapse: collapse;
  margin: 1.5rem 0;
  border-radius: 10px;
  overflow: hidden;
  box-shadow: 0 4px 6px rgba(0,0,0,0.1);
}

.operation-table th, .operation-table td {
  border: 1px solid #ddd;
  padding: 15px;
  text-align: left;
}

.operation-table th {
  background: var(--primary-color);
  color: white;
  font-weight: 600;
}

.operation-table tr:nth-child(even) {
  background-color: #f8f9fa;
}

.operation-table tr:hover {
  background-color: #e3f2fd;
}

.badge {
  display: inline-block;
  padding: 0.4em 0.8em;
  font-size: 0.75em;
  font-weight: bold;
  line-height: 1;
  text-align: center;
  white-space: nowrap;
  vertical-align: baseline;
  border-radius: 20px;
  margin: 0 0.3rem;
}

.badge-primary { 
  background: var(--primary-color);
  color: white; 
}

.badge-success { 
  background: var(--success-color);
  color: white; 
}

.badge-warning { 
  background: var(--warning-color);
  color: white; 
}

.badge-error { 
  background: var(--accent-color);
  color: white; 
}

.toc {
  background: #f8f9fa;
  border-radius: 10px;
  padding: 1.5rem;
  margin: 1.5rem 0;
  border-left: 6px solid var(--primary-color);
}

.toc ul {
  list-style: none;
  padding: 0;
}

.toc li {
  margin: 0.5rem 0;
  padding: 0.3rem 0;
  border-bottom: 1px solid #e9ecef;
}

.toc a {
  text-decoration: none;
  color: var(--primary-color);
  transition: color 0.2s;
}

.toc a:hover {
  color: var(--secondary-color);
}

h1, h2, h3, h4 {
  color: var(--primary-color);
  margin-top: 2rem;
}

h1 {
  border-bottom: 3px solid var(--secondary-color);
  padding-bottom: 0.5rem;
}
</style>
"""

# 文档标题和头部
nbText: """
<div class="content-wrapper">
<div class="header">
  <h1 style="color: white; border: none;">🧮 RPN计算器 - 专业使用手册</h1>
  <p style="font-size: 1.2em; opacity: 0.9;">基于C++实现的逆波兰表示法计算器</p>
  <div style="margin-top: 1rem;">
    <span class="badge badge-primary">版本 2.1</span>
    <span class="badge badge-success">稳定版</span>
    <span class="badge badge-warning">C++17</span>
    <span class="badge badge-error">高性能</span>
  </div>
</div>
"""

# 目录
nbText: """
<div class="toc">
<h2>📑 目录</h2>
<ul>
<li><a href="#项目简介">项目简介</a></li>
<li><a href="#快速开始">快速开始</a></li>
<li><a href="#功能特性">功能特性</a></li>
<li><a href="#详细使用指南">详细使用指南</a></li>
<li><a href="#错误处理">错误处理</a></li>
<li><a href="#高级功能">高级功能</a></li>
<li><a href="#api参考">API参考</a></li>
<li><a href="#示例集合">示例集合</a></li>
</ul>
</div>
"""

# 项目简介
nbText: """
## 🚀 项目简介

RPN（逆波兰表示法）是一种数学表达式表示法，其中操作符位于操作数之后。
这种表示法无需括号即可明确运算顺序，被广泛用于计算器和编程语言中。

**核心优势：**
- 🎯 **无歧义性** - 无需括号，运算顺序明确
- ⚡ **高效计算** - 适合栈机实现，计算效率高
- 🔧 **易于扩展** - 模块化设计，支持新操作符
"""

# 快速开始部分
nbText: """
## ⚡ 快速开始
"""

nbCode:
  let compileCommand = "g++ -std=c++17 -Wall -Wextra -O2 -o rpn_calc rpn_calc.cpp"
  echo fmt"💻 编译命令: {compileCommand}"

nbText: """
<div class="success">
💡 <strong>编译提示:</strong> 
- 使用 <code>-O2</code> 优化标志可以获得更好的性能
- 使用 <code>-g</code> 标志包含调试信息
</div>
"""

# 功能特性网格
nbText: """
## ✨ 功能特性
"""

nbText: """
<div class="feature-grid">
  <div class="feature-card">
    <h3>🔢 基本运算</h3>
    <p>支持加、减、乘、除四则运算，处理整数和浮点数</p>
    <code>5 3 + → 8.0</code>
  </div>
  <div class="feature-card">
    <h3>📊 栈管理</h3>
    <p>实时栈状态查看、清空操作，支持连续计算</p>
    <code>命令: s (显示栈), c (清空栈)</code>
  </div>
  <div class="feature-card">
    <h3>🛡️ 错误处理</h3>
    <p>完善的异常处理：除零、栈空、格式错误</p>
    <code>10 0 / → 除零错误</code>
  </div>
  <div class="feature-card">
    <h3>🎯 高精度</h3>
    <p>支持浮点数运算，6位小数精度，科学计算友好</p>
    <code>3.14159 2 * → 6.283180</code>
  </div>
</div>
"""

# 详细使用指南
nbText: """
## 📖 详细使用指南
"""

nbText: """
### 操作符参考表
"""

nbText: """
<table class="operation-table">
  <thead>
    <tr>
      <th>操作符</th>
      <th>描述</th>
      <th>语法</th>
      <th>示例</th>
      <th>结果</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>+</code></td>
      <td>加法运算</td>
      <td><code>a b +</code></td>
      <td><code>5 3 +</code></td>
      <td>8.0</td>
    </tr>
    <tr>
      <td><code>-</code></td>
      <td>减法运算</td>
      <td><code>a b -</code></td>
      <td><code>10 4 -</code></td>
      <td>6.0</td>
    </tr>
    <tr>
      <td><code>*</code></td>
      <td>乘法运算</td>
      <td><code>a b *</code></td>
      <td><code>6 7 *</code></td>
      <td>42.0</td>
    </tr>
    <tr>
      <td><code>/</code></td>
      <td>除法运算</td>
      <td><code>a b /</code></td>
      <td><code>15 3 /</code></td>
      <td>5.0</td>
    </tr>
  </tbody>
</table>
"""

# 交互式示例
nbText: """
### 交互式会话示例
"""

nbCode:
  let exampleSession = """
==================================
      C++ RPN 计算器
==================================
支持操作: +, -, *, /
示例: 输入 '5 5 +' 得到 10
命令: 'q'退出, 'c'清空栈, 's'显示栈
==================================
> 5 3 +
结果: 8.000000
> 2 3 * 4 +
结果: 10.000000
> 20 4 / 3 *
结果: 15.000000
> s
当前栈: 空
> c
栈已清空
> q
再见！
"""
  echo exampleSession

# 错误处理部分
nbText: """
## 🚨 错误处理
"""

nbText: """
<div class="error">
<strong>❌ 除零错误</strong><br>
输入: <code>10 0 /</code><br>
输出: <code>错误: 除零错误</code><br>
<small>系统会自动清空栈并等待新的输入</small>
</div>

<div class="warning">
<strong>⚠️ 输入格式错误</strong><br>
输入: <code>abc</code><br>
输出: <code>错误: 输入格式错误: abc</code><br>
<small>请确保输入有效的数字或操作符</small>
</div>
"""

# 高级功能
nbText: """
## 🔧 高级功能
"""

nbText: """
### 批量计算模式
程序支持连续输入多个表达式，自动维护栈状态，适合复杂计算。
"""

nbCode:
  let batchExample = """
> 5 5 +
结果: 10.000000
> 2 *
结果: 20.000000
> 4 /
结果: 5.000000
> 100 +
结果: 105.000000
> s
当前栈: 空
"""
  echo batchExample

# API参考
nbText: """
## 📚 API参考
"""

nbCode:
  echo "// RPNCalculator 类定义"
  echo "class RPNCalculator {"
  echo "private:"
  echo "    std::stack<double> stack;  // 内部栈存储"
  echo ""
  echo "public:"
  echo "    // 栈操作"
  echo "    void push(double value);           // 压入数值"
  echo "    double pop();                      // 弹出数值"
  echo "    "
  echo "    // 计算功能"
  echo "    void calculate(const std::string& operation);  // 执行计算"
  echo "    "
  echo "    // 工具函数"
  echo "    void clear();                      // 清空栈"
  echo "    void displayStack() const;         // 显示栈内容"
  echo "    bool empty() const;                // 检查栈是否为空"
  echo "    size_t size() const;               // 获取栈大小"
  echo "};"

# 综合示例集合
nbText: """
## 🎯 综合示例集合
"""

nbCode:
  let complexExamples = [
    "表达式: '3 4 2 * 1 5 - 2 3 ^ ^ / +' → 复杂数学表达式",
    "表达式: '1 2 + 4 * 5 + 3 -' → ((1+2)×4+5)-3 = 14",
    "表达式: '15 7 1 1 + - / 3 * 2 1 1 + + -' → 复杂嵌套运算"
  ]
  
  echo "📋 高级表达式示例:"
  for i, example in complexExamples:
    echo fmt"{i+1:2d}. {example}"

# 结尾部分
nbText: """
## 📄 许可证和贡献

本项目采用 **MIT 许可证**。欢迎提交 Issue 和 Pull Request 来改进这个项目。

---

<div align="center">
  <p><em>📅 最后更新: {$getDate()}</em></p>
  <p>
    <span class="badge badge-primary">C++</span>
    <span class="badge badge-success">Nimib</span>
    <span class="badge badge-warning">文档生成</span>
  </p>
  <p>✨ <strong>让计算更简单，让编程更愉快！</strong> ✨</p>
</div>
</div>
"""

# 保存文档
nbSave

echo "🎉 文档生成完成!"
echo "📁 文件位置: rpn_manual.html"
