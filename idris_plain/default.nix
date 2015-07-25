{ fetchFromGitHub, mkDerivation, annotated-wl-pprint, ansi-terminal, ansi-wl-pprint
     , base, base64-bytestring, binary, blaze-html, blaze-markup
     , boehmgc, bytestring, cheapskate, containers, deepseq, directory
     , filepath, fingertree, gmp, happy, haskeline, lens, libffi, mtl
     , network, optparse-applicative, parsers, pretty, process, safe
     , split, text, time, transformers, transformers-compat, trifecta
     , uniplate, unix, unordered-containers, utf8-string, vector
     , vector-binary-instances, xml, zip-archive, zlib, stdenv
     }:
     mkDerivation {
       pname = "idris";
       version = "0.9.18.1";
       src = fetchFromGitHub {
         owner = "MarkusBa";
         repo = "Idris-dev";
         rev = "master";
         sha256 = "c7ea19c8dddf60f2fa77cc9bf8ff2101679cb8c7da3fa9ec49b376a3deda6e6d";
       };
       isLibrary = true;
       isExecutable = true;
       buildDepends = [
         annotated-wl-pprint ansi-terminal ansi-wl-pprint base
         base64-bytestring binary blaze-html blaze-markup bytestring
         cheapskate containers deepseq directory filepath fingertree
         haskeline lens libffi mtl network optparse-applicative parsers
         pretty process safe split text time transformers
         transformers-compat trifecta uniplate unix unordered-containers
         utf8-string vector vector-binary-instances xml zip-archive zlib
       ];
       buildTools = [ happy ];
       extraLibraries = [ boehmgc gmp ];
       configureFlags = [ "-fffi" "-fgmp" ];
       jailbreak = true;
       homepage = "http://www.idris-lang.org/";
       description = "Functional Programming Language with Dependent Types";
       license = stdenv.lib.licenses.bsd3;
     }