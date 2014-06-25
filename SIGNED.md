##### Signed by https://keybase.io/josht
```
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAABAgAGBQJTqmw2AAoJEEtwXX0bMP+TnQQIAI4gtLsMGhW53aXcjCEJqg4e
btv8Uc9ckvpVa0vkjrWxqEcOnfQ8LxoaCc4YmYsKielfJPDK7GU7+DzwgfYwoWst
kiNVbfHEgUJAvk4ap1RMSFjnoFBV026GXrQOPiCnHwzf1RGUoQdGKQMFSnpia3pI
mIOYusv8/o4WPr4FlXpGNLQ6e3X3q/OjM+vO/uNUO7EYj+utBFHccD2nNbJrMbCC
U0h5Q1NAqyP1PmhipzWGyAxLGxj5vPqmqXfQ1DlCZgKRI2cdQC589TlcCrdVOzg6
NayszItHerf7LEn+YiJ2taV7WX+i+1PihVlJSzGevO4T+7mYtQ49580ewUAd5q4=
=V42c
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size  exec  file                               contents                                                        
            ./                                                                                                 
466           .gitignore                       e1504e90a140f8aef01cc3168d925b69b59923b1702510421d124665a438becf
1369          Gemfile                          b16f7058b97cd74cdc3ae990ba16186106c67450d3ed80a452d641e40054d803
2996          Gemfile.lock                     80662a5b6c97fbba7f3b5c4549b431e9fe1ac8b4b4854978ab33c0a69ef8fbd8
3352          README.md                        40eff5330bc59ee486c62358ceba233c188067494627369301a9ffa3b474d32c
249           Rakefile                         2ee3dee530649056f2d72faf53794a8330554ba47d2667a394fe5dc898421beb
              app/                                                                                             
                assets/                                                                                        
                  images/                                                                                      
0                   .keep                      e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
                  javascripts/                                                                                 
664                 application.js             c1708194f2949b587cbe1cd4d351269f4c3b269e1e747f5df60cfd015a507d4f
                  stylesheets/                                                                                 
683                 application.css            5d21884be79908f958b24be2d693cdde96baf7e0273bc114f6bdbbd63478c0ec
                controllers/                                                                                   
204               application_controller.rb    12c2dea0e1551cb53798d38ec06d349df07a5766866b0e5e6548a84a706935bd
                  concerns/                                                                                    
0                   .keep                      e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
207                 webhookable.rb             5defc3657742eceaa48512c82b7f8cfa2e5a752dfe42f872bb501f552f216cf9
58                phonebook.rb                 cf0d961eeb2915153478344a2deb123c0905280d0bad5a2d7e207fa78e664dca
0                 test.txt                     e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
2091              twilio_controller.rb         70c7fb13301e7abd2eb32ff0f2c2365a881f0d1c24e04cd6a15865ea454c45ab
                helpers/                                                                                       
29                application_helper.rb        f77fac5ea412dbed92c4524fe0ed180acb2b7239f84daf758da989032301f5c8
                mailers/                                                                                       
0                 .keep                        e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
                models/                                                                                        
0                 .keep                        e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
                  concerns/                                                                                    
0                   .keep                      e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
                views/                                                                                         
                  layouts/                                                                                     
299                 application.html.erb       68b9693816b25f30548ac6415338a68a60f556725b314da80ec0ed2f5ffdb253
              bin/                                                                                             
129   x         bundle                         7130bf85d0a1f4213924c456fffcc778b78258c0008e62a76bff9722a8cf1034
220   x         rails                          43ccfb538968bd0f04f03087f6e1cff83c2367f9999449240e0c9f73ff87883d
164   x         rake                           03556b255b27352e977502857c23cd3eb1a4ac70150808f7a9200cb411c57496
510   x         spring                         91c7a166cdfbfaab9fbcb713a19a3588395d67d0a5760fd25ce12218ac78af12
              config/                                                                                          
980             application.rb                 7446ad8159e3d5a4d41a2a26ff8f2d262c9c92280024a3765df342e3a72edeee
170             boot.rb                        1d0f1f8eace5bbe14d9c18fd026567074602af8aa5187d7d8f47c4dba14d5807
552             database.yml                   79829997df51a580cf0c0756a1bf2d77c9f9ebbae7596cfe1e1b185c2ffc740f
150             environment.rb                 6a4d7f5e0c46b1c8352a9a083f83b6b2053157662c090726282e7ad14a5a5ef9
                environments/                                                                                  
1422              development.rb               51db4f6572f2aace0e78ee115fa434689fc7c9eddda5356ee837ef0ed99e2032
3350              production.rb                6bcf0a83e723008454981ce2397316f1f44a8321e1b7f2464f1fb93fd369f2ff
1661              test.rb                      9460a4cd8b8a901146518e7f35c5e176105e1def0bbc16cc5e44ac9d4a20b582
                initializers/                                                                                  
404               backtrace_silencers.rb       12656d43090727d98c72bed6ba153b501ae0b7fdc5f20cfd64b5ab8a8bfa87a8
128               cookies_serializer.rb        67e69621f207a9a0245374a56712d939bf7381ffd2f0768cc465cfab2b164acc
194               filter_parameter_logging.rb  eb293cbcac26012fb63489b355b7a68df2e0f5006abe79e2128752f40514aaf4
647               inflections.rb               a2045e2ce03f29305e052a9236ff41d4c7d4d171c0fa5bf8cfbc958edd307df6
156               mime_types.rb                47b40f15fe7b4cb01fd6a72377cfcc2c12d4a92b2cb72dca4d66005cddcccc94
141               session_store.rb             a40817b6bedc5eeb1f8bf7c90ef03f52070c29f55d4bdad97eb72ed3c9c92932
517               wrap_parameters.rb           c9768c02e265d5980177ea86c7fd886a19a2a276d11663c5849eca5231280691
                locales/                                                                                       
634               en.yml                       44028606fa6334147bef7aeb7ef9303dd7971c96c2e0d9d29525c19919bac57c
125             routes.rb                      653a4d248f7e30e9ed8c1ae575e7513626e1be43d36fb5f94ad9c6fbd9a52f5b
964             secrets.yml                    3f265e5d9adb1e1f74676996cdeb7c81d42a2a587ad75da4d91dbdbe46342ef3
154           config.ru                        4bfd478acf3e8d501c7ac4fe74b781f2bc37b40f9866b60c78fdffb723a9b7e9
              db/                                                                                              
343             seeds.rb                       23894953d6535a862947de82cfa02ba7d2e9fd627acfabefaef9dc22953b6255
              lib/                                                                                             
                assets/                                                                                        
0                 .keep                        e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
                tasks/                                                                                         
0                 .keep                        e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
              log/                                                                                             
0               .keep                          e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
              public/                                                                                          
1564            404.html                       b8c03554a54fcd04dde6befa1f0cbaff733c54435021c08cb8a4e3474812d015
1547            422.html                       a699bce0b9481ae5ac7e8121cca1ded3573e369502d56c353311fe263a3569e7
1477            500.html                       119cbfcafeddb7a1ecf2d53d67a5681fbfc3a6d30c0d9afcbd9d22d83bd14570
0               favicon.ico                    e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
202             robots.txt                     17fb1dc3361b057783040fa7f58d72f18707170866d370bd3db6e547bee09058
877           run.sh                           9dbed09725f61909ac946fb303325c7b58573b449be426ebd8ab9c6733288bbc
              test/                                                                                            
                controllers/                                                                                   
0                 .keep                        e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
                fixtures/                                                                                      
0                 .keep                        e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
                helpers/                                                                                       
0                 .keep                        e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
                integration/                                                                                   
0                 .keep                        e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
                mailers/                                                                                       
0                 .keep                        e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
                models/                                                                                        
0                 .keep                        e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
450             test_helper.rb                 30a8a4a3705daa9d8a1a9a7b7639b81ba9a65704d1c6bcb8c51af18380c7058b
              vendor/                                                                                          
                assets/                                                                                        
                  javascripts/                                                                                 
0                   .keep                      e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
                  stylesheets/                                                                                 
0                   .keep                      e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
```

#### Ignore

```
/SIGNED.md
```

#### Presets

```
git      # ignore .git and anything as described by .gitignore files
dropbox  # ignore .dropbox-cache and other Dropbox-related files    
kb       # ignore anything as described by .kbignore files          
```

<!-- summarize version = 0.0.9 -->

### End signed statement

<hr>

#### Notes

With keybase you can sign any directory's contents, whether it's a git repo,
source code distribution, or a personal documents folder. It aims to replace the drudgery of:

  1. comparing a zipped file to a detached statement
  2. downloading a public key
  3. confirming it is in fact the author's by reviewing public statements they've made, using it

All in one simple command:

```bash
keybase dir verify
```

There are lots of options, including assertions for automating your checks.

For more info, check out https://keybase.io/docs/command_line/code_signing