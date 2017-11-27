using System;
using System.Xml;
using System.Xml.Schema;

namespace xlstChecking
{
    class Program
    {
        static void Main(string[] args)
        {
            XmlReaderSettings settings = new XmlReaderSettings();

            settings.Schemas.Add("http://epam.com/learn/books", "BooksSchema.xsd");
            settings.ValidationEventHandler +=
                delegate (object sender, ValidationEventArgs e)
                {
                    Console.WriteLine("[{0}:{1}] {2}", e.Exception.LineNumber, e.Exception.LinePosition, e.Message);
                };

            settings.ValidationFlags = settings.ValidationFlags | XmlSchemaValidationFlags.ReportValidationWarnings;
            settings.ValidationType = ValidationType.Schema;

            XmlReader reader1 = XmlReader.Create("books.xml", settings);

            while (reader1.Read()) ;
    
            Console.WriteLine("Good file was checked");

            XmlReader reader2 = XmlReader.Create("books_wrong.xml", settings);

            while (reader2.Read());

            Console.Read();
        }
    }
}
