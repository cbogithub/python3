#!/bin/bash
mkdir news-rediff
cd news-rediff
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/rediff.com/showNewsArticleById/2016-06-02-18_24_25.773/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cnn
cd news-cnn
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/cnn.com/showNews/2016-06-02-18_21_48.224/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cricbuzz
cd news-cricbuzz
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/cricbuzz.com/showCricketNewsById/2016-06-02-18_21_23.430/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-washingtonpost
cd news-washingtonpost
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/washingtonpost.com/showArticleByDetails/2016-06-02-18_24_01.809/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-timesofindia
cd news-timesofindia
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/timesofindia.indiatimes.com/showNewsById/2016-06-02-18_23_08.870/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-engadget
cd news-engadget
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/engadget.com/showArticleByDetails/2016-06-02-18_20_09.427/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-bleacherreport
cd news-bleacherreport
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/bleacherreport.com/showArticleById/2016-06-02-18_22_48.188/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-buzzfeed
cd news-buzzfeed
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/buzzfeed.com/showArticleById/2016-06-02-18_20_40.578/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-nbcnews
cd news-nbcnews
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/nbcnews.com/showNews/2016-06-02-18_09_39.231/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-techcrunch
cd news-techcrunch
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/techcrunch.com/showArticleDetail/2016-06-02-17_22_47.785/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-abcnews
cd news-abcnews
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/abcnews.go.com/showNewsItem/2016-06-02-18_25_06.305/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-foxnews
cd news-foxnews
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/foxnews.com/showArticle/2016-06-02-18_22_18.942/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-theguardian
cd news-theguardian
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/theguardian.com/showNewsByNewsUrl/2016-06-02-18_23_34.331/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
wc -l */part
