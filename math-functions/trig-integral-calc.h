#include <cmath>

/*
These functions use the power reduction formulae to integrate various trigonometric functions.
*/

// Returns the integral of sin(x)^n
double sin_n(const double &power, const double &x)
{
    if(power == 1)
        return -cos(x);
    else if(power == 0)
        return x;

    return -pow(sin(x),power-1)*cos(x)/(power) + (power-1)/power  * sin_n(power-2,x);
}

// Returns the integral of cos(x)^n
double cos_n(const double &power, const double &x)
{
    if(power == 1)
        return sin(x);
    else if(power == 0)
        return x;

    return (pow(cos(x),power-1)*sin(x))/(power) + (power-1)/power  * cos_n(power-2,x);
}

// Returns the integral of tan(x)^n
double tan_n(const double &power, const double &x)
{
    if(power == 1)
        return -log(abs(cos(x)));
    else if(power == 0)
        return x;

    return pow(tan(x),power-1)/(power-1) - tan_n(power-2,x);
}

// Returns the integral of sec(x)^n
double sec_n(const double &power, const double &x)
{
    if(power == 1)
        return log(abs(1/cos(x) + tan(x)));
    else if(power == 0)
        return x;

    return tan(x)*pow(1/cos(x),power-2)/(power-1) + (power-2)/(power-1) * sec_n(power-2,x);
}

// Returns the integral of sin(x)^m * cos(x)^n
double sin_m_cos_n(const double &sin_power, const double &cos_power, const double &x)
{
    if(sin_power == 0)
        return cos_n(cos_power,x); // integral of cos(x)^n
    else if(cos_power == 0)
        return sin_n(sin_power,x); // integral of sin(x)^n
    else if((cos_power == 0) && (sin_power == 0)) // integral of 1
        return x;

    return (pow(sin(x),sin_power+1)*pow(cos(x),cos_power-1))/(sin_power+cos_power) + (cos_power-1)/(sin_power+cos_power) * sin_m_cos_n(sin_power,cos_power-2,x);
}
