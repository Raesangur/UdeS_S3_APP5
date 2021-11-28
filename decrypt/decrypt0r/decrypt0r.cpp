#include <stdint.h>
#include <stdio.h>

const char* text = "\xab\x3d\xbc\xe7\xbd\x2f\x0d\x6a\x83\x4a\x54\x01\x80\x1e\x31\x44\x58\x2a\xf8\x04";
const int length = 20;

int main() {

	for (uint8_t gpq = 0; gpq < 0xFF; gpq++)
	{
		char output[length + 1] = {'\0'};
		for (int i = 0; i < length; i++)
		{
			output[i] = text[i] ^ gpq;
		}
		output[length] = '\0';
		printf("GPQ: 0x%02X: %s\n", gpq, output);
	}
}
