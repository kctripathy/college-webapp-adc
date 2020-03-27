using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Micro.Objects
{
    public class CommonFunctions
    {
        public static IEnumerable<string> getWordsWithMinLength(string text, int minLength)
        {
            string[] words = text.Split();
            return words.Where(w => w.Length >= minLength);
        }

        public static string[] StringSplitWrap(string sentence, int MaxLength)
        {
            List<string> parts = new List<string>();
            //string sentence = "Silver badges are awarded for longer term goals. Silver badges are uncommon.";

            string[] pieces = sentence.Split(' ');
            StringBuilder tempString = new StringBuilder("");

            foreach (var piece in pieces)
            {
                if (piece.Length + tempString.Length + 1 > MaxLength)
                {
                    parts.Add(tempString.ToString());
                    tempString.Clear();
                }
                tempString.Append((tempString.Length == 0 ? "" : " ") + piece);
            }

            if (tempString.Length > 0)
                parts.Add(tempString.ToString());

            return parts.ToArray();
        }

        public static string StringSplit(string sentence, int MaxLength)
        {
            List<string> parts = new List<string>();
            //string sentence = "Silver badges are awarded for longer term goals. Silver badges are uncommon.";

            string[] pieces = sentence.Split(' ');
            StringBuilder tempString = new StringBuilder("");

            foreach (var piece in pieces)
            {
                if (piece.Length + tempString.Length + 1 > MaxLength)
                {
                    parts.Add(tempString.ToString());
                    tempString.Clear();
                }
                tempString.Append((tempString.Length == 0 ? "" : " ") + piece);
            }

            if (tempString.Length > 0)
                parts.Add(tempString.ToString());

            return parts[0].ToString();
        }
    }
}
