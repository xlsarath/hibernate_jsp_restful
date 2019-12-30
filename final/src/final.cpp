//============================================================================
// Name        : final.cpp
// Author      : sarath
// Version     :
// Copyright   : Your copyright notice
// Description : Final_project in C++, Ansi-style
//============================================================================

#include <iostream>
#include <queue>
#include <fstream>
#include "customer.h"
#include "server.h"
#define N 1000

int count1;

void delayObservedcount (int numberOfServers) {

cout << "As of now total " << count1 << " <-- customers would've experience delay if initial count of " << numberOfServers << " servers was held" << endl;

}


bool  monitorDelay(int i, int p,int n) {

if ( p +(i - n) < n) {
//cout << "Delay Occured" <<endl;
count1++;
return true;
}

return false;
}




int main() {
	int simulationTime = 100;
	int numberOfServers = 4;
	int	count=0,n=0,m=0,ser_count[numberOfServers];
	int initial_count= numberOfServers;

	server s[numberOfServers];
	while(n<numberOfServers){
		s[n].setBusy(false);
		//cout << "  rapid done   "<<endl;
		n++;
	}
	customer c[N];
	queue<customer> cust_queue;
	ifstream file("/Users/sarathchandra/eclipse-workspace/final/src/simulation.txt");
	if(!file.is_open()){
		cout<<"File failed to open!";
	    return 0;
	}
	while(!file.eof()){
	    file >> c[m];  //sorting the input sample file,if the data is scrambled
	    cust_queue.push(c[m]);
	    m++;
	}
	file.close();
	cout << endl;
	cout << "@@@@@@@@@@@@@@@@  CUSTOMERS & THIER TRANSACTIONS W.R.T SERVERS @@@@@@@@@@@@@@@@"<<endl<<endl;
	for (int clock = 1; clock <= simulationTime; clock++){
		for(int i=0;i<numberOfServers;i++){
			if(s[i].isBusy()){
				s[i].transactionTime--;
				if(s[i].getTransactionTime()<=0){
					s[i].setBusy(false);
					cout << "At time unit " << clock << " server " << i+1 <<" finishes transaction of " << s[i].currentCustomer << " and Service end time: " << clock << endl;
//							if (monitorDelay (clock,s[i].getArrivalTime(),s[i].serviceTime)) {// monitoring to check for any delays
//								numberOfServers++ ; //Dynamically adding additional server to keep the pace
//							}

//							if (clock - (s[i].getArrivalTime()+s[i].serviceTime) < s[i].serviceTime) {
//
//								cout << "delay observed " << endl;
//
//							}


					ser_count[i]++;

//cout << clock - s[i].getArrivalTime() << endl;
//cout << s[i].getServiceTime() << endl;
				}

			}
			if(s[i].isBusy()==false){
				if(cust_queue.empty()) continue;
				if(cust_queue.front().getArrivalTime()> clock ) continue;
				customer readyCust = cust_queue.front();
				cust_queue.pop();
				readyCust.serviceTime= clock;
				s[i].setBusy(true);
				s[i].setCurrentCustomer(readyCust);
				s[i].setTransactionTime(readyCust.transactionTime);
				s[i].setArivalTime(readyCust.arrivalTime);
				s[i].setServiceTime(readyCust.serviceTime);
				cout << "At time unit " << clock << " server " << i+1 <<" assigned to [" << s[i].currentCustomer << endl;
				if (monitorDelay (clock,s[i].getArrivalTime(),s[i].serviceTime)) {// monitoring to check for any delays
											numberOfServers++ ; //Dynamically adding additional server to keep the pace
										}
				ser_count[i]++;
			}
		}
	}

	cout << "##########################################################################################################" << endl;

	cout << "Existing server count is (" << initial_count << ")" << endl;
	delayObservedcount ( initial_count);;


}
