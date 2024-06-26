module str

// cstring.h
#define     str__to_num(...)              StrToNum(__VA_ARGS__)
#define     str__str_len(...)             StrLen(__VA_ARGS__)
#define     str__index(...)               StrIndex(__VA_ARGS__)
#define     str__from_num(...)            NumToStr(__VA_ARGS__)
#define     str__str_cat(...)             StrCat(__VA_ARGS__)
#define     str__sub(...)                 SubStr(__VA_ARGS__)
#define     str__flatten(...)             Flatten(__VA_ARGS__)
#define     str__replace(...)             StrReplace(__VA_ARGS__)
#define     str__format_num(...)          FormatNum(__VA_ARGS__)
#define     str__format_val(...)          FormatVal(__VA_ARGS__)
#define     str__flatten_var(...)         FlattenVar(__VA_ARGS__)
#define     str__unflatten_var(...)       UnflattenVar(__VA_ARGS__)
#define     str__pos(...)                 Pos(__VA_ARGS__)
#define     str__byte_array_to(...)       ByteArrayToStr(__VA_ARGS__)
#define     str__byte_array_to_ex(...)    ByteArrayToStrEx(__VA_ARGS__)
#define     str__to_byte_array(...)       StrToByteArray(__VA_ARGS__)
#define     str__copy(...)                Copy(__VA_ARGS__)
#define     str__mid(...)                 MidStr(__VA_ARGS__)
#define     str__right(...)               RightStr(__VA_ARGS__)
#define     str__left(...)                LeftStr(__VA_ARGS__)
#define     str__len(...)                 strlen(__VA_ARGS__)
#define     str__cat(...)                 strcat(__VA_ARGS__)
#define     str__n_cat(...)               strncat(__VA_ARGS__)
#define     str__cpy(...)                 strcpy(__VA_ARGS__)
#define     str__n_cpy(...)               strncpy(__VA_ARGS__)
#define     str__cmp(...)                 strcmp(__VA_ARGS__)
#define     str__n_cmp(...)               strncmp(__VA_ARGS__)
#define     str__memcpy(...)              memcpy(__VA_ARGS__)
#define     str__memmove(...)             memmove(__VA_ARGS__)
#define     str__memcmp(...)              memcmp(__VA_ARGS__)
#define     str__address_of(...)          addressOf(__VA_ARGS__)
#define     str__reladdress_of(...)       reladdressOf(__VA_ARGS__)
#define     str__address_of_ex(...)       addressOfEx(__VA_ARGS__)

// Functions for use with NXC array types.
#define		str__upper_case(...) 	UpperCase(__VA_ARGS__) 
#define		str__lower_case(...) 	LowerCase(__VA_ARGS__) 
#define		str__upper_case_ex(...) 	UpperCaseEx(__VA_ARGS__) 
#define		str__lower_case_ex(...) 	LowerCaseEx(__VA_ARGS__) 
