#include <iostream>
#include <vector>

int main()
{
  int32_t i = 1;
  int32_t j;
  j= (i<<1);

  std::cout << j << std::endl;
  
  j= (i<<30);

  std::cout << j << std::endl;

  std::vector<int32_t> k(2,1);

  j= (k[0]<<30);
  std::cout << j << std::endl;

  
  return 0;
}
