# Translate Nest to Another Language

Copy `/qml/i18n/nest_en.ts`, replacing the `en` part of the filename with the language you're translating Nest to.  For example, the file for Spanish would be `nest_es.ts`;  

1. Change the language code at the top of your new file `<TS version="2.1" language="en_US">`.
2. Translate the text between each of the `<translation></translation>` tags in your new file.

If you don't plan to build Nest, you can stop here.  Submit a PR with your changes.

## Building Language Files

Language files are XML for human readability, but these need to be built into .qm files before Nest can use them.

Go to the i18n directory.
`cd qml/i18n`
Build the qm file
`<qt-path>/<qt-version>/clang_64/bin/lrelease ./<ts-file-to-build>`

You should see output like this:
`Updating './nest_en.qm'...
    Generated 87 translation(s) (87 finished and 0 unfinished)`

## Using Translated Nest

At launch, Nest will automatically detect your OS language.  If that language has been added to nest, you will see Nest in that language.  Otherwise, English will be used as default.
