#include <iostream>
#include <stack>
#include <string>
#include <sstream>
#include <stdexcept>
#include <cmath>

class RPNCalculator {
private:
    std::stack<double> stack;
    
public:
    void push(double value) {
        stack.push(value);
    }
    
    double pop() {
        if (stack.empty()) {
            throw std::runtime_error("栈空错误");
        }
        double value = stack.top();
        stack.pop();
        return value;
    }
    
    void calculate(const std::string& operation) {
        // 实现四则运算逻辑
        if (operation == "+") {
            double b = pop();
            double a = pop();
            push(a + b);
        } else if (operation == "-") {
            double b = pop();
            double a = pop();
            push(a - b);
        } else if (operation == "*") {
            double b = pop();
            double a = pop();
            push(a * b);
        } else if (operation == "/") {
            double b = pop();
            if (b == 0) {
                throw std::runtime_error("除零错误");
            }
            double a = pop();
            push(a / b);
        } else {
            // 如果是数字，压入栈中
            std::istringstream iss(operation);
            double value;
            if (iss >> value) {
                push(value);
            } else {
                throw std::runtime_error("输入格式错误: " + operation);
            }
        }
    }
    
    void clear() {
        while (!stack.empty()) {
            stack.pop();
        }
    }
    
    void displayStack() {
        // 显示当前栈内容
        std::stack<double> temp = stack;
        std::cout << "当前栈: ";
        while (!temp.empty()) {
            std::cout << temp.top() << " ";
            temp.pop();
        }
        std::cout << std::endl;
    }
    
    bool empty() const {
        return stack.empty();
    }
    
    size_t size() const {
        return stack.size();
    }
};

int main() {
    RPNCalculator calc;
    std::string input;
    
    std::cout << "C++ RPN 计算器" << std::endl;
    std::cout << "输入表达式 (例, '5 5 +'), 或 'q' 退出." << std::endl;
    
    while (true) {
        std::cout << "> ";
        std::getline(std::cin, input);
        
        if (input == "q" || input == "quit") {
            break;
        }
        
        if (input.empty()) {
            continue;
        }
        
        try {
            std::istringstream iss(input);
            std::string token;
            
            while (iss >> token) {
                calc.calculate(token);
            }
            
            if (!calc.empty()) {
                double result = calc.pop();
                if (calc.empty()) {
                    std::cout << "结果: " << result << std::endl;
                } else {
                    std::cout << "警告: 栈中还有多余元素" << std::endl;
                    calc.displayStack();
                }
            }
            
        } catch (const std::exception& e) {
            std::cout << "错误: " << e.what() << std::endl;
            calc.clear();
        }
    }
    
    return 0;
}
