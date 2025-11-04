#include <ctype.h>
#include "isogram.h"

bool is_isogram(const char phrase[]) {
	if (!phrase) return false;

	bool seen[26] = {false};
	char c;
    while((c = *phrase) != '\0') {
		if (isalpha(c)) {
			int index = tolower(c) - 'a';
			if(seen[index]) return false;
			seen[index] = true;
		}
		++phrase;
	}
    return true;
}
