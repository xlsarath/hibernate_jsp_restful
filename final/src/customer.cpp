//============================================================================
// Name        : final.cpp
// Author      : sarath
// Version     :
// Copyright   : Your copyright notice
// Description : Final_project in C++, Ansi-style
//============================================================================
#include <iostream>
#include "customer.h"

using namespace std;

ostream& operator<< (ostream& os, customer& c)
{
    os << "Customer #" << c.customerNumber << " who arrived @" << c.arrivalTime << " and spent Transaction time: "
    		<< c.transactionTime << " and respective Service start time @" << c.serviceTime << "]";
    return os;
}

istream& operator>> (istream& is, customer& c)
{
    is >> c.customerNumber >> c.arrivalTime >> c.transactionTime;
    return is;
}


