#!/bin/bash
mkdir news-rediff
cd news-rediff
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/rediff.com/showNewsArticleById/2016-06-02-18_54_39.089/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cnn
cd news-cnn
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/cnn.com/showNews/2016-06-02-18_54_15.233/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cricbuzz
cd news-cricbuzz
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/cricbuzz.com/showCricketNewsById/2016-06-02-18_53_58.286/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-washingtonpost
cd news-washingtonpost
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/washingtonpost.com/showArticleByDetails/2016-06-02-18_54_26.948/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-timesofindia
cd news-timesofindia
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/timesofindia.indiatimes.com/showNewsById/2016-06-02-18_41_14.861/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-engadget
cd news-engadget
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/engadget.com/showArticleByDetails/2016-06-02-18_53_35.012/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-bleacherreport
cd news-bleacherreport
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/bleacherreport.com/showArticleById/2016-06-02-18_53_20.639/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-buzzfeed
cd news-buzzfeed
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/buzzfeed.com/showArticleById/2016-06-02-18_53_42.819/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-nbcnews
cd news-nbcnews
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/nbcnews.com/showNews/2016-06-02-18_54_06.579/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-techcrunch
cd news-techcrunch
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/techcrunch.com/showArticleDetail/2016-06-02-17_55_02.707/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-abcnews
cd news-abcnews
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/abcnews.go.com/showNewsItem/2016-06-02-19_11_56.754/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-foxnews
cd news-foxnews
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/foxnews.com/showArticle/2016-06-02-18_52_57.737/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-theguardian
cd news-theguardian
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/theguardian.com/showNewsByNewsUrl/2016-06-02-18_54_59.174/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
wc -l */part
