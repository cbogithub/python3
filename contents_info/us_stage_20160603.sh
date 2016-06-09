#!/bin/bash
mkdir deals-groupon
cd deals-groupon
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/groupon.com/showDealByBiz/2016-06-03-03_36_47.312/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-buzzfeed
cd news-buzzfeed
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/buzzfeed.com/showArticleById/2016-06-03-16_52_52.654/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-theguardian
cd news-theguardian
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/theguardian.com/showNewsByNewsUrl/2016-06-03-16_53_58.633/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cnn
cd news-cnn
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/cnn.com/showNews/2016-06-03-16_54_31.881/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cricbuzz
cd news-cricbuzz
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/cricbuzz.com/showCricketNewsById/2016-06-03-16_53_13.878/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir movie-fandango-movie
cd movie-fandango-movie
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/fandango.com/showMovieDetailsByMovieId/2016-06-03-03_36_33.275/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-abcnews
cd news-abcnews
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/abcnews.go.com/showNewsItem/2016-06-03-17_08_09.530/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-engadget
cd news-engadget
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/engadget.com/showArticleByDetails/2016-06-03-16_53_04.227/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-rediff
cd news-rediff
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/rediff.com/showNewsArticleById/2016-06-03-16_53_40.394/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-nbcnews
cd news-nbcnews
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/nbcnews.com/showNews/2016-06-03-16_40_41.968/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-techcrunch
cd news-techcrunch
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/techcrunch.com/showArticleDetail/2016-06-03-16_53_21.608/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir sports-espn
cd sports-espn
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/espn.go.com/showTeamById/2016-06-03-03_36_08.621/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir deals-livingsocial
cd deals-livingsocial
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/livingsocial.com/showDeal/2016-06-03-03_21_36.217/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-bleacherreport
cd news-bleacherreport
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/bleacherreport.com/showArticleById/2016-06-03-16_52_43.607/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-timesofindia
cd news-timesofindia
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/timesofindia.indiatimes.com/showNewsById/2016-06-03-16_53_29.697/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-washingtonpost
cd news-washingtonpost
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/washingtonpost.com/showArticleByDetails/2016-06-03-16_52_34.519/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-foxnews
cd news-foxnews
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/foxnews.com/showArticle/2016-06-03-16_54_21.374/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
wc -l */part
