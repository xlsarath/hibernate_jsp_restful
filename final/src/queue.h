//============================================================================
// Name        : final.cpp
// Author      : sarath
// Version     :
// Copyright   : Your copyright notice
// Description : Final_project in C++, Ansi-style
//============================================================================
#ifndef QUEUE_H_
#define QUEUE_H_
#include <iostream>
using namespace std;
template<class Queue>

class Myqueue{
public:
	Myqueue(int x)	{
		rear = front = -1;
		arr = new Queue[x];
		size = x;
	}

	void push(Queue data){
		if ((front == 0 && rear == size - 1) || rear == (front - 1) % (size - 1)){
			cout << "FULL";
			return;
		}
		else if (front == -1)
		{
			front = rear = 0;
			arr[rear] = data;
		}
		else if (rear == size - 1 && front != 0)
		{
			rear = 0;
			arr[rear] = data;
		}
		else
		{
			rear++;
			arr[rear] = data;
		}
	}

	Queue pop()
	{
		if (front == -1)
		{
			cout << "empty" << endl;
		}

		Queue data = arr[front];
		if (front == rear)
		{
			front = rear = -1;
		}
		else if (front == size - 1)
		{
			front = 0;
		}
		else
			front++;

		return data;
	}

	void display()
	{
		if (front == -1)
		{
			cout << "EMPTY";
		}
		else
		{
			if (front <= rear)
			{
				for (int i = front; i <= rear; i++)
				{
					cout << arr[i] << " ";
				}

			}
			else
			{
				for (int i = front; i < size; i++)
				{
					cout << arr[i] << " ";
				}
				for (int i = 0; i <= rear; i++)
				{
					cout << arr[i] << " ";
				}
			}
		}
	}

private:
	int size;
	Queue *arr;
	int rear;
	int front;
};
#endif /* QUEUE_H_ */
