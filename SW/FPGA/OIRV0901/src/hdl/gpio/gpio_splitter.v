/* 
 * ----------------------------------------------------------------------------
 *  Project:  OpenIRV
 *  Filename: gpio_splitter.v
 *  Purpose:  GPIO splitter module to simplify AXI GPIO block design.
 * ----------------------------------------------------------------------------
 *  Copyright © 2020-2021, Vaagn Oganesyan <ovgn@protonmail.com>
 *  
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *  
 *      http://www.apache.org/licenses/LICENSE-2.0
 *  
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 * ----------------------------------------------------------------------------
 */


`default_nettype none
`timescale 1ps / 1ps


module gpio_splitter
(
    input   wire    [14:0]  gpio,
    
    output  wire            pwr_off_req,
    output  wire            dma_fsm_aresetn,
    output  wire    [1:0]   act_led,
    output  wire    [4:0]   lcd_led_level,
    output  wire    [2:0]   avg_level,
    output  wire            nuc_bypass,
    output  wire            bpr_bypass,
    output  wire            bias_volt_sel
);
    
    assign  pwr_off_req      = gpio[0];
    
    assign  dma_fsm_aresetn  = gpio[1];
    
    assign  act_led[0]       = gpio[2];
    assign  act_led[1]       = gpio[3];
    
    assign  lcd_led_level[0] = gpio[4];
    assign  lcd_led_level[1] = gpio[5];
    assign  lcd_led_level[2] = gpio[6];
    assign  lcd_led_level[3] = gpio[7];
    assign  lcd_led_level[4] = gpio[8];
    
    assign  avg_level[0]     = gpio[9];
    assign  avg_level[1]     = gpio[10];
    assign  avg_level[2]     = gpio[11];
    
    assign  nuc_bypass       = gpio[12];
    assign  bpr_bypass       = gpio[13];
    
    assign  bias_volt_sel    = gpio[14];
    
endmodule

/*-------------------------------------------------------------------------------------------------------------------------------------*/

`default_nettype wire
