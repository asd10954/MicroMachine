`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:09:15 03/21/2015 
// Design Name: 
// Module Name:    Regfiles 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module regfiles(
	input clk, //�Ĵ�����ʱ���źţ��½���д�����ݣ�ע�⣺pc Ϊ�����أ���Ϊ�½��أ�
	input rst, //reset �źţ�reset ��Чʱȫ���Ĵ�������
	input we, //д��Ч�źţ�we ��Чʱ�Ĵ������ܱ�д��
	input [4:0] raddr1, //�����ȡ�ļĴ����ĵ�ַ
	input [4:0] raddr2, //�����ȡ�ļĴ����ĵ�ַ
	input [4:0] waddr, //д�Ĵ����ĵ�ַ
	input [31:0] wdata, //д�Ĵ�������
	output [31:0] rdata1, //raddr1 ����Ӧ�Ĵ��������ݣ�ֻҪ��raddr1 �����뼴�����Ӧ����
	output [31:0] rdata2 //raddr2 ����Ӧ�Ĵ��������ݣ�ֻҪ��raddr2 �����뼴�����Ӧ����
	);
	reg [31:0] tmp_data[1:31];
	integer i;
	
	assign rdata1 = (raddr1==0) ? 0 : tmp_data[raddr1];
	assign rdata2 = (raddr2==0) ? 0 : tmp_data[raddr2];
	always @(negedge clk or posedge rst) begin
		if(rst) begin
			for(i=1;i<32;i=i+1)
				tmp_data[i] <= 0;
		end
		else if((waddr!=0)&&we)
			tmp_data[waddr] <= wdata;
	end

endmodule
