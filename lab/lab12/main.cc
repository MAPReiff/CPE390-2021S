#include "GravSim.hh"
#include<time.h>
using namespace std;
int main(int argc, char* argv[]) {
        clock_t start,end;
        start = clock();
	GravSim sim("solarsys.dat");
	const double dt = 10;
	const uint32_t numTimeSteps = 10000000;
	const uint32_t numStepsPerPrint = 10000000;
	for (uint32_t i = 0; i < numTimeSteps; i+= numStepsPerPrint) {
		sim.forward(numStepsPerPrint, dt);
	}
	end = clock();
	cout<<"Time: "<<(double)(end-start)/CLOCKS_PER_SEC;
	
}
