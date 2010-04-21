#include "convertencode.h"

#include "qstring.h"

#include <string>

namespace DS
{
  // this using iconv functon to convert big5 to unicode, not use qt qtextcodec
  inline QString big5str_to_qstr(const std::string &str)
  {
    DS::ConvertEncode convert_encode;
    std::vector<int> unicode;
    convert_encode.convert(str, unicode);
    QChar *qchar_array = new QChar [unicode.size()];
      for (std::vector<int>::size_type i=0 ; i < unicode.size() ; ++i)
    qchar_array[i]=QChar(unicode[i]);
    QString qstr(qchar_array, unicode.size());
    delete [] qchar_array;
    return qstr;
  }
}
