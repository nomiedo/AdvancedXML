using System;
using System.IO;
using System.Xml.Xsl;

namespace HTMLReport
{
    class Program
    {
        static void Main(string[] args)
        {
            var resultPath = "../../result.html";
            if (File.Exists(resultPath))
                File.Delete(resultPath);

            var xsl = new XslCompiledTransform();
            xsl.Load("../../HTMLReportBooks.xslt");
            var xslParams = new XsltArgumentList();
            xslParams.AddParam("Date", "", DateTime.Now.ToString("g"));

            xsl.Transform("../../books.xml", xslParams, new FileStream(resultPath, FileMode.Create));
        }
    }
}
