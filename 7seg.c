#include "ti_msp_dl_config.h"



#define NUM_SEGMENTS 7  // Number of segments (a, b, c, d, e, f, g)
#define NUM_DIGITS 2    // Number of digits
void clearLCDMemoryTable(void);
uint32_t gLCDMemoryTableLower[NUM_DIGITS];
uint32_t pinsMask1 = SEGMENT_DISPLAY_1_SEG_A_PIN | SEGMENT_DISPLAY_1_SEG_B_PIN | SEGMENT_DISPLAY_1_SEG_C_PIN | SEGMENT_DISPLAY_1_SEG_D_PIN | SEGMENT_DISPLAY_1_SEG_E_PIN | SEGMENT_DISPLAY_1_SEG_F_PIN | SEGMENT_DISPLAY_1_SEG_G_PIN;
uint32_t pinsMask2 = SEGMENT_DISPLAY_2_SEG_H_PIN | SEGMENT_DISPLAY_2_SEG_I_PIN | SEGMENT_DISPLAY_2_SEG_J_PIN | SEGMENT_DISPLAY_2_SEG_K_PIN | SEGMENT_DISPLAY_2_SEG_L_PIN | SEGMENT_DISPLAY_2_SEG_M_PIN | SEGMENT_DISPLAY_2_SEG_N_PIN;
#define DELAY_MS 1000  // 1-second delay

// Displaying numbers 0 to 9
const uint8_t segmentPatterns[10] = {
// a b c d e f g
    0b00111111,  // 0
    0b00000110,  // 1
    0b01011011,  // 2
    0b01001111,  // 3
    0b01100110,  // 4
    0b01101101,  // 5
    0b01111101,  // 6
    0b00000111,  // 7
    0b01111111,  // 8
    0b01101111   // 9
};

void delay(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++){
        for (j = 0; j < 1000; j++){
        }

    }
}
int main(void) {
    SYSCFG_DL_init();
   // clearLCDMemoryTable();
    while (1) {
        for (int num = 0; num < 60; num++) {
            int first = num / 10;
            int second = num % 10;
            
            // Set the segment pattern for the first display (firsy digit)
            
            DL_GPIO_writePinsVal(SEGMENT_DISPLAY_1_PORT, pinsMask1, segmentPatterns[first]);

            // Enable the first display
            DL_GPIO_setPins(SEGMENT_DISPLAY_1_PORT, pinsMask1);

            // Delay 1 second
            delay(DELAY_MS);

            // Disable the first display
            DL_GPIO_clearPins(SEGMENT_DISPLAY_1_PORT, pinsMask1);

            // Set the segment pattern for the second display (second digit)
            DL_GPIO_writePinsVal(SEGMENT_DISPLAY_2_PORT, pinsMask2, segmentPatterns[second]);

            // Enable second display
            DL_GPIO_setPins(SEGMENT_DISPLAY_2_PORT, pinsMask2);

            // Delay 1 second
            delay(DELAY_MS);

            // Disable the second display
            DL_GPIO_clearPins(SEGMENT_DISPLAY_2_PORT, pinsMask2);
        }
    }
}
/*
void clearLCDMemoryTable(void)
{
    for (int i = 0; i <= NUM_DIGITS; i++) {
        gLCDMemoryTableLower[i] = 0;
    }
}
*/