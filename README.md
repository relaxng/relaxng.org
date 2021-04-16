# relaxng.org

## Update History

### 16 April 2021

Added the OASIS RelaxNG specification as DocBook with transformations and build taken from the [ZIP of OASIS email list](https://lists.oasis-open.org/archives/relax-ng/200112/msg00002.html. ).

Generate the RelaxNG specification from src/main/resources/xsl via command-line at project root calling:
 'mvn clean'
Requires [Maven and its requirements](https://maven.apache.org/download.cgi) installed.
The deliverables are created within target/generated-resources/xml/xslt.
The tr.css and oasis.png files need to be copied from root directory aside from generated output to receive the full visual experience!

### 25 November 2018

These are the files from the `relaxng.org` website as of
22 November 2018 with the following differences:

1. The `.backup` files have been removed.
2. Publishing from GitHub doesn’t support symbolic links so
   the previously linked documents are simple copies now.
3. After getting the DNS records updated this site became https://relaxng.org/
