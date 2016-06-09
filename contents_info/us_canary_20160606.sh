#!/bin/bash
mkdir news-rediff
cd news-rediff
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/rediff.com/showNewsArticleById/2016-06-06-17_24_18.977/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-theguardian
cd news-theguardian
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/theguardian.com/showNewsByNewsUrl/2016-06-06-17_22_31.699/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-buzzfeed
cd news-buzzfeed
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/buzzfeed.com/showArticleById/2016-06-06-17_10_46.620/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-nbcnews
cd news-nbcnews
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/nbcnews.com/showNews/2016-06-06-17_21_06.376/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-techcrunch
cd news-techcrunch
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/techcrunch.com/showArticleDetail/2016-06-06-17_20_44.426/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-foxnews
cd news-foxnews
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/foxnews.com/showArticle/2016-06-06-17_23_26.229/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir deals-livingsocial
cd deals-livingsocial
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/livingsocial.com/showDeal/2016-06-06-11_55_25.192/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-bleacherreport
cd news-bleacherreport
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/bleacherreport.com/showArticleById/2016-06-06-17_25_09.121/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-abcnews
cd news-abcnews
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/abcnews.go.com/showNewsItem/2016-06-06-17_25_47.682/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cnn
cd news-cnn
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/cnn.com/showNews/2016-06-06-17_21_34.375/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir sports-espn
cd sports-espn
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/espn.go.com/showTeamById/2016-06-06-01_59_07.528/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-engadget
cd news-engadget
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/engadget.com/showArticleByDetails/2016-06-06-17_20_21.901/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir deals-groupon
cd deals-groupon
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/groupon.com/showDealByBiz/2016-06-06-11_58_46.394/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cricbuzz
cd news-cricbuzz
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/cricbuzz.com/showCricketNewsById/2016-06-06-17_23_04.649/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir movie-fandango-movie
cd movie-fandango-movie
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/fandango.com/showMovieDetailsByMovieId/2016-06-06-01_58_46.324/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-washingtonpost
cd news-washingtonpost
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/washingtonpost.com/showArticleByDetails/2016-06-06-17_23_52.031/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-timesofindia
cd news-timesofindia
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/timesofindia.indiatimes.com/showNewsById/2016-06-06-17_22_03.656/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
wc -l */part
