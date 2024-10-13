/*
Name: Lab7_Welton
Author: Christopher Welton
Description: This program mocks an email message using OOP. 
*/

#include "Message.h"
#include<iostream>

using namespace std;

int main() {

    Message testMessage = Message("Chris", "Tony");
    testMessage.append("Hello fellow human! I enjoy conversing.");
    testMessage.print();

    cout << "\n";

    Time updated(15, 30, 0);
    testMessage.setTime(updated);
    testMessage.append("The time has updated.");
    testMessage.print();
    return 0;
}