{ fetchFromGitHub, mkDerivation, annotated-wl-pprint, ansi-terminal, ansi-wl-pprint
     , base, base64-bytestring, binary, blaze-html, blaze-markup
     , boehmgc, bytestring, cheapskate, containers, deepseq, directory
     , filepath, fingertree, gmp, happy, haskeline, lens, libffi, mtl
     , network, optparse-applicative, parsers, pretty, process, safe
     , split, text, time, transformers, transformers-compat, trifecta
     , uniplate, unix, unordered-containers, utf8-string, vector
     , vector-binary-instances, xml, zip-archive, zlib_0_5_4_2, stdenv
     }:
     mkDerivation {
       pname = "idris";
       version = "0.9.18.1";
       src = ./Idris-dev-0.9.18.1;
       isLibrary = true;
       isExecutable = true;
       buildDepends = [
         annotated-wl-pprint ansi-terminal ansi-wl-pprint base
         base64-bytestring binary blaze-html blaze-markup bytestring
         cheapskate containers deepseq directory filepath fingertree
         haskeline lens libffi mtl network optparse-applicative parsers
         pretty process safe split text time transformers
         transformers-compat trifecta uniplate unix unordered-containers
         utf8-string vector vector-binary-instances xml zip-archive zlib_0_5_4_2
       ];
       buildTools = [ happy ];
       extraLibraries = [ boehmgc gmp ];
       configureFlags = [ "-fffi" "-fgmp" ];
       jailbreak = true;
       homepage = "http://www.idris-lang.org/";
       description = "Functional Programming Language with Dependent Types";
       license = stdenv.lib.licenses.bsd3;
     }