/*
 * romi2c.h
 *
 *  Created on: 2014/01/22
 *      Author: nakamura
 */

#ifndef ROMI2C_H_
#define ROMI2C_H_

#include "stdint.h"

typedef void *I2C_HANDLE_T;
typedef void (*I2C_CALLBK_T )(uint32_t err_code, uint32_t n);

typedef struct ROM_CALL {
	const uint32_t reserved1[5];
	const uint32_t *pI2CD;
	const uint32_t reserved2[3];
//	const UARTD_API_T *pUARTD;
	const uint32_t uartd[1];
} ROM;

typedef struct i2c_A {
	uint32_t num_bytes_send;
	uint32_t num_bytes_rec;
	uint8_t *buffer_ptr_send;
	uint8_t *buffer_ptr_rec;
	I2C_CALLBK_T func_pt; // callback function pointer
	uint8_t stop_flag;
	uint8_t dummy[3]; // required for word alignment
} I2C_PARAM;

typedef struct i2c_R {
	uint32_t n_bytes_sent;
	uint32_t n_bytes_recd;
} I2C_RESULT;

typedef enum I2C_mode {
	IDLE, MASTER_SEND, MASTER_RECEIVE, SLAVE_SEND, SLAVE_RECEIVE
} I2C_MODE_T;

typedef enum {
	LPC_OK = 0,
	ERROR, ERR_I2C_BASE = 0x00060000,
	ERR_I2C_NAK = ERR_I2C_BASE + 1,
	ERR_I2C_BUFFER_OVERFLOW,
	ERR_I2C_BYTE_COUNT_ERR,
	ERR_I2C_LOSS_OF_ARBRITRATION,
	ERR_I2C_SLAVE_NOT_ADDRESSED,
	ERR_I2C_LOSS_OF_ARBRITRATION_NAK_BIT,
	ERR_I2C_GENERAL_FAILURE,
	ERR_I2C_REGS_SET_TO_DEFAULT
} ErrorCode_t;

typedef struct I2CD_API {
	void (*i2c_isr_handler)(I2C_HANDLE_T* h_i2c);
// MASTER functions ***
	ErrorCode_t (*i2c_master_transmit_poll)
		(I2C_HANDLE_T* h_i2c, I2C_PARAM* ptp,I2C_RESULT* ptr);
	ErrorCode_t (*i2c_master_receive_poll)
		(I2C_HANDLE_T* h_i2c, I2C_PARAM* ptp,I2C_RESULT* ptr);
	ErrorCode_t (*i2c_master_tx_rx_poll)
		(I2C_HANDLE_T* h_i2c, I2C_PARAM* ptp,I2C_RESULT* ptr);
	ErrorCode_t (*i2c_master_transmit_intr)
		(I2C_HANDLE_T* h_i2c, I2C_PARAM* ptp,I2C_RESULT* ptr);
	ErrorCode_t (*i2c_master_receive_intr)
		(I2C_HANDLE_T* h_i2c, I2C_PARAM* ptp,I2C_RESULT* ptr);
	ErrorCode_t (*i2c_master_tx_rx_intr)
		(I2C_HANDLE_T* h_i2c, I2C_PARAM* ptp,I2C_RESULT* ptr);
// SLAVE functions ***
	ErrorCode_t (*i2c_slave_receive_poll)
		(I2C_HANDLE_T* h_i2c, I2C_PARAM* ptp,I2C_RESULT* ptr);
	ErrorCode_t (*i2c_slave_transmit_poll)
		(I2C_HANDLE_T* h_i2c, I2C_PARAM* ptp,I2C_RESULT* ptr);
	ErrorCode_t (*i2c_slave_receive_intr)
		(I2C_HANDLE_T* h_i2c, I2C_PARAM* ptp,I2C_RESULT* ptr);
	ErrorCode_t (*i2c_slave_transmit_intr)
		(I2C_HANDLE_T* h_i2c, I2C_PARAM* ptp,I2C_RESULT* ptr);
	ErrorCode_t (*i2c_set_slave_addr)
		(I2C_HANDLE_T* h_i2c,uint32_t slave_addr_0_3,
				uint32_t slave_mask_0_3);
// OTHER functions
	uint32_t (*i2c_get_mem_size)(void);
	I2C_HANDLE_T* (*i2c_setup)
		(uint32_t i2c_base_addr, uint32_t *start_of_ram);
	ErrorCode_t (*i2c_set_bitrate)
		(I2C_HANDLE_T* h_i2c, uint32_t Pclk,uint32_t bitrate);
	uint32_t (*i2c_get_firmware_version)();
	I2C_MODE_T (*i2c_get_status)(I2C_HANDLE_T* h_i2c);
    ErrorCode_t (*i2c_set_timeout)(I2C_HANDLE_T *handle, uint32_t timeout);
} I2CD_API_T;

#define ROM_DRIVERS_PTR ((ROM *)(*((unsigned int *)0x1FFF1FF8)))

#endif /* ROMI2C_H_ */
