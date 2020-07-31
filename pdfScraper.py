import PyPDF4
import sys
import pathlib

def setText():
    while True:
        textfile = input('Enter text file name (\':q\' to abort): ')
        if textfile == ':q':
            return ':q'
        else:
            return textfile

def main():
    fileOutput = False
    textfile = ''
    textResponse = input('Do you want to redirect to a text file? (y/n) ')
    if (textResponse.lower() == 'y') | (textResponse.lower() == 'yes'):
        textfile = setText()
        if textfile != ':q':
            fileOutput = True
        else:
            print('Successfully quit, output remains stdout')

    while True:
        # Opening a pdf to be read
        filename = input('Enter the document name: ')
        path = pathlib.Path(filename)
        if path.exists():
            print('READING ' + filename + ':\n')
            # Open the pdf
            pdfFileObj = open(filename, 'rb')
            pdfReader = PyPDF4.PdfFileReader(pdfFileObj)
            numPages = pdfReader.numPages
            oldOutput = sys.stdout
            if fileOutput:
                sys.stdout = open(textfile, 'w')

            # Parse and format the first page - names
            print('\n=====READING PAGE 1====\n')
            pageObj = pdfReader.getPage(0)
            
            # Format to titlecase
            text = pageObj.extractText().title()

            # Remove whitespaces
            text = " ".join(text.split())

            # Format with '|'
            text = text.replace(', And ', '|')
            text = text.replace(' And ', '|')
            text = text.replace(', ', '|')

            print(text)


            # Parse and format the rest of the pages
            for n in range(1, numPages):
                print('\n=====READING PAGE ' + str(n + 1) + '====\n')
                pageObj = pdfReader.getPage(n)
                
                text = pageObj.extractText()

                # Remove whitespaces
                text = " ".join(text.split())

                print(text)


            # Close the file
            pdfFileObj.close()
            sys.stdout = oldOutput
            print('\nCOMPLETE\n')

        else:
            print('error: ' + filename + ' does not exist.\n')

if __name__ == '__main__':
    main()