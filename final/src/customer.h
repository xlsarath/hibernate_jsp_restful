//============================================================================
// Name        : final.cpp
// Author      : sarath
// Version     :
// Copyright   : Your copyright notice
// Description : Final_project in C++, Ansi-style
//============================================================================

#ifndef CUSTOMER_H_
#define CUSTOMER_H_
#include<iostream>
#include<queue>
using namespace std;

class customer
{
	friend istream& operator >> (istream&, customer&);
	friend ostream& operator << (ostream&, customer&);

public:
    int customerNumber;
    int arrivalTime;
    int transactionTime;
    int serviceTime;

	int getArrivalTime() const {
		return arrivalTime;
	}

	void setArrivalTime(int arrivalTime) {
		this->arrivalTime = arrivalTime;
	}

	int getCustomerNumber() const {
		return customerNumber;
	}

	void setCustomerNumber(int customerNumber) {
		this->customerNumber = customerNumber;
	}

	int getServiceTime() const {
		return serviceTime;
	}

	void setServiceTime(int serviceTime) {
		this->serviceTime = serviceTime;
	}

	int getTransactionTime() const {
		return transactionTime;
	}

	void setTransactionTime(int transactionTime) {
		this->transactionTime = transactionTime;
	}


};



#endif /* CUSTOMER_H_ */
