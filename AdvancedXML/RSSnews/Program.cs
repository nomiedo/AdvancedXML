using System;
using System.IO;
using System.Xml.Xsl;

namespace RSSnews
{
    class Program
    {
        static void Main(string[] args)
        {
            var resultPath = "../../RSSresult.html";
            if (File.Exists(resultPath))
                File.Delete(resultPath);

            var xsl = new XslCompiledTransform();
            xsl.Load("../../RSSFeedBooks.xslt");
            xsl.Transform("../../RSSbooks.xml", null, new FileStream(resultPath, FileMode.Create));
        }
    }
}
