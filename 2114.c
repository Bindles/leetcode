// int mostWordsFound(char** sentences, int sentencesSize) {
//   int max=0;
//     for(int i=0;i<sentencesSize;i++)
//     {
//         int count=0;
//         for(int j=0;sentences[i][j]!='\0';j++)
//             if(sentences[i][j]==' ')
//                 count++;
//           if(count>max)
//               max=count;
//     }
//     return max+1;
// }


// #include <stdio.h>

// // Function declaration
// int mostWordsFound(char** sentences, int sentencesSize);

// int main() {
//     // Given input sentences
//     char* sentences[] = {"alice and bob love leetcode", "i think so too", "this is great thanks very much"};
    
//     // Calculate the number of sentences in the array
//     int sentencesSize = sizeof(sentences) / sizeof(sentences[0]);

//     // Call the function and store the result
//     int maxWords = mostWordsFound(sentences, sentencesSize);

//     // Output the result
//     printf("Maximum words found in a sentence: %d\n", maxWords);

//     return 0;
// }

// // Function definition
// int mostWordsFound(char** sentences, int sentencesSize) {
//     int max = 0;
//     for (int i = 0; i < sentencesSize; i++) {
//         int count = 0;
//         for (int j = 0; sentences[i][j] != '\0'; j++) {
//             if (sentences[i][j] == ' ') {
//                 count++;
//             }
//         }
//         if (count > max) {
//             max = count;
//         }
//     }
//     return max + 1;
// }


// #include <stdio.h>

// // Function declaration
// void mostWordsFound(char** sentences, int sentencesSize);

// int main() {
//     // Given input sentences
//     char* sentences[] = {"alice and bob love leetcode", "i think so too", "this is great thanks very much"};
    
//     // Calculate the number of sentences in the array
//     int sentencesSize = sizeof(sentences) / sizeof(sentences[0]);

//     // Call the function to print the result
//     mostWordsFound(sentences, sentencesSize);
// }

// // Function definition
// void mostWordsFound(char** sentences, int sentencesSize) {
//     int max = 0;
//     for (int i = 0; i < sentencesSize; i++) {
//         int count = 0;
//         for (int j = 0; sentences[i][j] != '\0'; j++) {
//             if (sentences[i][j] == ' ') {
//                 count++;
//             }
//         }
//         if (count > max) {
//             max = count;
//         }
//     }
//     printf("Maximum words found in a sentence: %d\n", max + 1);
//}

#include <stdio.h>

// Function declaration
int mostWordsFound(char** sentences, int sentencesSize);

int main() {
    // Given input sentences
    char* sentences[] = {"alice and bob love leetcode", "i think so too", "this is great thanks very much"};
    
    // Calculate the number of sentences in the array
    int sentencesSize = sizeof(sentences) / sizeof(sentences[0]);

    // Call the function and store the result
    int result = mostWordsFound(sentences, sentencesSize);

    // Print the result using printf
    printf("Maximum words found in a sentence: %d\n", result);

    return 0;
}

// Function definition
int mostWordsFound(char** sentences, int sentencesSize) {
    int max = 0;
    for (int i = 0; i < sentencesSize; i++) {
        int count = 0;
        for (int j = 0; sentences[i][j] != '\0'; j++) {
            if (sentences[i][j] == ' ') {
                count++;
            }
        }
        if (count > max) {
            max = count;
        }
    }
    return max + 1;
}

