//============================================================================
// Name        : final.cpp
// Author      : sarath
// Version     :
// Copyright   : Your copyright notice
// Description : Final_project in C++, Ansi-style
//============================================================================
#ifndef SERVER_H_
#define SERVER_H_
#import "customer.h"

class server
{
public:
    bool busy;
    int transactionTime ,serviceTime;
    customer currentCustomer;
    int arivalTime;

	bool isBusy() const {
		return busy;
	}

	void setBusy(bool busy) {
		this->busy = busy;
	}

	const customer& getCurrentCustomer() const {
		return currentCustomer;
	}

	void setCurrentCustomer(const customer& currentCustomer) {
		this->currentCustomer = currentCustomer;
	}

	int getTransactionTime() const {
		return transactionTime;
	}

	void setTransactionTime(int transactionTime) {
		this->transactionTime = transactionTime;
	}

	int getArrivalTime() const {
		return arivalTime;
	}

	void setArivalTime(int arivalTime) {
		this->arivalTime = arivalTime;

	}

	int getServiceTime() const {
		return serviceTime;
	}

	void setServiceTime(int serviceTime) {
		this->serviceTime = serviceTime;
	}



};


#endif /* SERVER_H_ */

