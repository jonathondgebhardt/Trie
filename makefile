all: pwned
	
pwned: Trie.o PwnedPasswords.o
	g++ PwnedPasswords.o Trie.o -o pwned -std=c++11

Trie.o: Trie.h Trie.cpp
	g++ -c Trie.h Trie.cpp -std=c++11

PwnedPasswords.o: PwnedPasswords.cpp
	g++ -c PwnedPasswords.cpp -std=c++11

clean:
	rm *o pwned