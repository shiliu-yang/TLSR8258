#include "tuya_ble_log.h"
#include "multi_button.h"

#define RESET_BUTTON_PORT	GPIO_PC3
#define TIME_MS	1000

unsigned long button_attach_time = 0;

struct Button button_1;

static uint8_t read_button_1_gpio()
{
	if (gpio_read(RESET_BUTTON_PORT) == 0) {
		return 0;
	} else {
		return 1;
	}
}

static void button_1_callback(void *button)
{
    uint32_t btn_event_val;

    btn_event_val = get_button_event((struct Button *)button);

    switch(btn_event_val)
    {
	    case PRESS_DOWN:
	    	TUYA_APP_LOG_INFO("---> key1 press down! <---");
	    	break;

	    case PRESS_UP:
	    	TUYA_APP_LOG_INFO("***> key1 press up! <***");
	    	break;

	    case PRESS_REPEAT:
	    	TUYA_APP_LOG_INFO("---> key1 press repeat! <---");
	    	break;

	    case SINGLE_CLICK:
	    	TUYA_APP_LOG_INFO("---> key1 single click! <---");
	    	break;

	    case DOUBLE_CLICK:
	    	TUYA_APP_LOG_INFO("***> key1 double click! <***");
	    	break;

	    case LONG_PRESS_START:
	    	TUYA_APP_LOG_INFO("---> key1 long press start! <---");
	   		break;

	    case LONG_PRESS_HOLD:
	    	TUYA_APP_LOG_INFO("***> key1 long press hold! <***");
	    	break;
	}
}

void reset_button_init(void)
{
    gpio_set_func(RESET_BUTTON_PORT ,AS_GPIO);
    gpio_set_output_en(RESET_BUTTON_PORT, 0);
    gpio_set_input_en(RESET_BUTTON_PORT ,1);
    gpio_setup_up_down_resistor(RESET_BUTTON_PORT, PM_PIN_PULLUP_10K);

    button_init(&button_1, read_button_1_gpio, 0);
//    button_attach(&button_1, PRESS_DOWN, button_1_callback);
//    button_attach(&button_1, PRESS_UP, button_1_callback);
//    button_attach(&button_1, PRESS_REPEAT, button_1_callback);
    button_attach(&button_1, SINGLE_CLICK, button_1_callback);
    button_attach(&button_1, DOUBLE_CLICK, button_1_callback);
//    button_attach(&button_1, LONG_PRESS_START, button_1_callback);
//    button_attach(&button_1, LONG_PRESS_HOLD, button_1_callback);
    button_start(&button_1);
}

void reset_button_task(void)
{
	if (clock_time_exceed(button_attach_time, 5 * TIME_MS)) {
		button_attach_time = clock_time();
		button_ticks();
	}
}
