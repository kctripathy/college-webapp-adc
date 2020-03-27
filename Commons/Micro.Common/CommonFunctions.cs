using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Micro.Commons
{
    public class CommonFunctions
    {
        public static IEnumerable<string> getWordsWithMinLength(string text, int minLength)
        {
            string[] words = text.Split();
            return words.Where(w => w.Length >= minLength);
        }
    }
}
