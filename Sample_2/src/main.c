#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_usart.h"

#include "hal-config.h"

#include <stdio.h>

#define USER_TX_LOCATION 0
#define USER_RX_LOCATION 0

int main(void)
{
  uint8_t data = 10;
  /* Chip errata */
  CHIP_Init();

  // Initialize board
  //initBoard();

  /* Enable related clocks */
  CMU_ClockEnable(cmuClock_HFPER, true);
  CMU_ClockEnable(cmuClock_GPIO, true);
  CMU_ClockEnable(cmuClock_USART0,true);

  USART_Enable(USART0,usartEnableTx);

  /* Initialize with default settings and then update fields according to application requirements. */
  USART_InitAsync_TypeDef initAsync = USART_INITASYNC_DEFAULT;
  initAsync.baudrate = 38400;
  USART_InitAsync(USART0,&initAsync);

  /* Enable I/O and set location */
    USART0->ROUTEPEN |= USART_ROUTEPEN_RXPEN | USART_ROUTEPEN_TXPEN;
     USART0->ROUTELOC0 = (USART0->ROUTELOC0 &
                          ~(_USART_ROUTELOC0_TXLOC_MASK
                            | _USART_ROUTELOC0_RXLOC_MASK ))
						  | (USER_TX_LOCATION << _USART_ROUTELOC0_TXLOC_SHIFT)
						  | (USER_RX_LOCATION << _USART_ROUTELOC0_RXLOC_SHIFT);

     GPIO_PinModeSet((GPIO_Port_TypeDef)AF_USART0_TX_PORT(USER_TX_LOCATION), AF_USART0_TX_PIN(USER_TX_LOCATION), gpioModePushPull, 1);
     GPIO_PinModeSet((GPIO_Port_TypeDef)AF_USART0_RX_PORT(USER_RX_LOCATION), AF_USART0_RX_PIN(USER_RX_LOCATION), gpioModeInput, 0);

//     if (USART0->CTRL & USART_CTRL_SYNC)
//       {
//       GPIO_PinModeSet((GPIO_Port_TypeDef)gpioPortA, 0,gpioModePushPull,0);   //TX
//       GPIO_PinModeSet((GPIO_Port_TypeDef)gpioPortA, 1, gpioModeInput, 0);    //RX
//       }
//     else
//       {
//       GPIO_PinModeSet((GPIO_Port_TypeDef)gpioPortA, 0,gpioModePushPull,1);   //TX
//       GPIO_PinModeSet((GPIO_Port_TypeDef)gpioPortA, 1, gpioModeInput, 0);    //RX
//       }

  /* Infinite loop */
  while (1) {
	  USART_Tx(USART0, data);
  }
}
