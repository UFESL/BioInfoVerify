#include <rapidcheck.h>
#include <iostream>
#include <vector>
#include <sdsl/wavelet_trees.hpp>
#include <sdsl/wt_pc.hpp>
#include <random>


using namespace std;
using namespace sdsl;

// Function to generate two random numbers where the first is smaller than the second
std::pair<int, int> generateRandomNumbers(int minVal, int maxVal) {
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(minVal, maxVal);

    int num1 = dis(gen);
    int num2 = dis(gen);
    while (num1 >= num2) {
        num1 = dis(gen);
        num2 = dis(gen);
    }
    return std::make_pair(num1, num2);
}

// Function to generate a single random number between minVal and maxVal (inclusive)
int generateRandomNumber(int minVal, int maxVal) {
    // Create a random device to seed the random number generator
    std::random_device rd;

    // Create a random number engine using the random device as a seed
    std::mt19937 gen(rd());

    // Define a uniform distribution to generate numbers between minVal and maxVal
    std::uniform_int_distribution<> dis(minVal, maxVal);

    // Generate and return a single random number
    return dis(gen);
}

// Function to generate a random string with characters 'A', 'T', 'P', 'G'
std::string generateRandomString(int minLength, int maxLength) {
    static constexpr char alphabet[] = {'A', 'T', 'P', 'G'};
    static constexpr int alphabetSize = sizeof(alphabet) / sizeof(alphabet[0]);
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(0, alphabetSize - 1);

    int length = minLength + (maxLength > minLength ? dis(gen) % (maxLength - minLength + 1) : 0);
    std::string randomString(length, '\0');
    for (int i = 0; i < length; ++i) {
        randomString[i] = alphabet[dis(gen)];
    }
    return randomString;
}


// Property-based test function to check the initialization of wt_huff
void RC_GTEST_PROP1() {
    // Generate a random vector of integers
    // std::vector<uint64_t> input = *rc::gen::nonEmpty<std::vector<uint64_t>>();


    // std::pair<int, int> randomNumbers = generateRandomNumbers(1, 10000);

    int randomNumber = generateRandomNumber(100, 1000);


    // RC_ASSERT(randomNumbers.first < randomNumbers.second);
    // cout << "randomNumber1 " << randomNumbers.first << endl;
    // cout << "randomNumber2 " << randomNumbers.second << endl;

    // std::string input = generateRandomString(randomNumbers.first, randomNumbers.second);
    std::string input = generateRandomString(5, randomNumber);



    // Initialize wt_huff with the generated input
    wt_huff<> wt;
    // wt = wt_huff<>(input.begin(), input.end());
    sdsl::construct_im(wt, input, 1);


    // Check if wt_huff is properly initialized
    RC_ASSERT(wt.size() == input.size());
    for (size_t i = 0; i < input.size(); ++i) {
        RC_ASSERT(wt[i] == input[i]);
    }
}

// Property-based test function to check the rank operation of wt_huff
void RC_GTEST_PROP2() {
    // Generate a random vector of integers
    // std::vector<uint64_t> input = *rc::gen::nonEmpty<std::vector<uint64_t>>();


    // std::pair<int, int> randomNumbers = generateRandomNumbers(1, 10000);

    int randomNumber = generateRandomNumber(100, 1000);


    // RC_ASSERT(randomNumbers.first < randomNumbers.second);
    // cout << "randomNumber1 " << randomNumbers.first << endl;
    // cout << "randomNumber2 " << randomNumbers.second << endl;

    // std::string input = generateRandomString(randomNumbers.first, randomNumbers.second);
    std::string input = generateRandomString(5, randomNumber);

    int r = generateRandomNumber(5, input.size());


    // Construct a wt_huff from the input string
       // Initialize wt_huff with the generated input
    wt_huff<> wt;
    // wt = wt_huff<>(input.begin(), input.end());
    sdsl::construct_im(wt, input, 1);

    // cout << "input size " << input.size() << endl; 


    // Check the rank operation for random positions
    for (size_t i = 0; i < input.size(); ++i) {
        // cout << "wt rank " << wt.rank(i, 'A') << endl; 
        // cout << "count " << std::count(input.begin(),  input.begin()+i , 'A') << endl; 
        RC_ASSERT(wt.rank(i, 'A') == std::count(input.begin(),  input.begin()+i , 'A'));
        RC_ASSERT(wt.rank(i, 'T') == std::count(input.begin(), input.begin() + i, 'T'));
        RC_ASSERT(wt.rank(i, 'P') == std::count(input.begin(), input.begin() + i, 'P'));
        RC_ASSERT(wt.rank(i, 'G') == std::count(input.begin(), input.begin() + i, 'G'));
    }
}

// Property-based test function to check the select operation of wt_huff
void RC_GTEST_PROP3() {
    int randomNumber = generateRandomNumber(1000, 1500);
    std::string input = generateRandomString(900, randomNumber);

    int r = generateRandomNumber(5, input.size());
    wt_huff<> wt;
    sdsl::construct_im(wt, input, 1);

    // cout << "input " << input << endl;

    // Test the select operation for random positions and characters
    for (size_t i = 1; i < input.size(); ++i) {
        char ch = input[i];
        size_t rank = wt.rank(i+1, ch);
        // cout << "i " << i << endl;
        // cout << "ch " << ch << endl;
        // cout << "rank " << rank << endl;

        //  cout << "wt rank " << rank << endl;
        if (rank != 0){
            size_t sel = wt.select(rank, ch);
            // cout << "wt sel " << sel << endl;
            // cout << "wt i " << i << endl;


            RC_ASSERT(sel == i);
        }
        // size_t sel = wt.select(rank, ch);
        // if (sel != i) {
        //     std::cerr << "Input: " << input << std::endl;
        //     std::cerr << "Character: " << ch << std::endl;
        //     std::cerr << "Rank: " << rank << std::endl;
        //     std::cerr << "Select: " << sel << ", Expected: " << i << std::endl;
        // }
        // RC_ASSERT(sel == i);
    }
}


int main()
{

    string s = "ACGTTCCAACGTATACGGGT";
    wt_huff<> wt;
    sdsl::construct_im(wt, s, 1);
    cout << "Rank of 'T' at position 19: " << wt.rank(20, 'T') << endl; // Suppose to be 4

    cout << "Rank of 'C' at position 0: " << wt.rank(0, 'C') << endl; // Suppose to be 0

    cout << "Rank of 'F' at position 19: " << wt.rank(19, 'F') << endl; // Suppose to be 0

    cout << "Rank of 'F' at position 0: " << wt.rank(0, 'F') << endl; // Suppose to be 0

    cout << "Select of 'C' occoured times: " << wt.select(1, 'C') << endl; // Suppose to be 1

    cout << "Select of 'C' occoured times: " << wt.select(5, 'C') << endl; // Suppose to be 15

    // cout << "Select of 'C' occoured times: " << wt.select(1, 'A') << endl; // Suppose to be 15


//    cout << "Select of 'C' occoured times: " << wt.select(6, 'C') << endl; // corrupted
//
//    cout << "Select of 'C' occoured times: " << wt.select(0, 'C') << endl; // corrupted

    for (int i = 0; i < s.size(); ++i) {
        std::cout<<wt[i]<<" ";
    }
    std::cout<<std::endl;

    // rc::check("check rank", () {
    //         //   auto l1 = l0;
    //         //   std::reverse(begin(l1), end(l1));
    //         //   std::reverse(begin(l1), end(l1));
    //         //   RC_ASSERT(l0 == l1);
    //            RC_ASSERT(wt.rank(19, 'T') == 4);
    //         });

   

    // rc::check("check initialization",[](string s) {
    //     wt_huff<> wt;
    //     sdsl::construct_im(wt, s, 1);
    //     RC_ASSERT(wt != NULL);
    // });

    // rc::check("double reversal yields the original value",
    //         [](const std::vector<int> &l0) {
    //           auto l1 = l0;
    //           std::reverse(begin(l1), end(l1));
    //           std::reverse(begin(l1), end(l1));
    //           RC_ASSERT(l0 == l1);
    //         });

    // rc::check("wt_huff initialization", RC_GTEST_PROP1);
    // rc::check("wt_huff rank operation", RC_GTEST_PROP2);
    rc::check("wt_huff select operation", RC_GTEST_PROP3);





    return 0;

}