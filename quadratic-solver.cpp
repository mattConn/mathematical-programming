#include <iostream>
#include <cmath>
#include <complex>
#include <iomanip>

int roots(int sign, int a, int b, int c);

class vertexCoords
{
public:
    double x(int b, int a)
    {
        return -b/2*a;
    }
    double y(double x,int a,int b,int c)
    {
        return a*std::pow(x,2)+b*x+c;
    }
} vertex;

int main()
{
    std::cout << "Enter the three coeffecients of the quadratic equation in standard form:" << std::endl;
    while(true)
    {
        int a,b,c;
        roots(-1,a,b,c);
        std::cout << "Coefficients: ";
        std::cin >> a >> b >> c;

        std::cout << "Standard form: "
                     + std::to_string(a)
                     + "x^2+" + std::to_string(b)
                     +"x+"+std::to_string(c)
                  << std::endl;

//        TODO: Cannot cast complex to string?
//          Find better handling of complex numbers
        std::cout << "Roots: ";
        std::cout << std::complex<double>(roots(-1,a,b,c));
        std::cout << std::complex<double>(roots(1,a,b,c));
        std::cout << std::endl;

//        TODO: truncate roots
        std::cout << "Vertex: ("
            +std::to_string(vertex.x(b,a))
            +", "
            +std::to_string(vertex.y(vertex.x(b,a),a,b,c))
            +")"
            << std::endl;

            std::cout << "Y-intercept: " + std::to_string(c) + "\n" << std::endl;
    }

}

int roots(int sign, int a, int b ,int c)
{
    return (-b + (sign * std::sqrt(std::pow(b,2) - 4*a*c))) / 2*a;
};
