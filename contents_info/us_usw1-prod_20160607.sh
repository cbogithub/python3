#!/bin/bash
mkdir hotels-airbnb
cd hotels-airbnb
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/airbnb.com/showRoom/2016-06-07-18_23_09.093/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir hotels-goibibo
cd hotels-goibibo
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/goibibo.com/showHotelDetails/2016-06-07-18_10_37.937/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-foxnews
cd news-foxnews
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/foxnews.com/showArticle/2016-06-07-18_22_59.150/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-buzzfeed
cd news-buzzfeed
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/buzzfeed.com/showArticleById/2016-06-07-18_21_35.840/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-rediff
cd news-rediff
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/rediff.com/showNewsArticleById/2016-06-07-18_22_00.038/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cnn
cd news-cnn
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/cnn.com/showNews/2016-06-07-18_21_10.682/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir tv-abc
cd tv-abc
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/abc.go.com/showSeries/2016-06-07-18_16_44.111/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-bleacherreport
cd news-bleacherreport
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/bleacherreport.com/showArticleById/2016-06-07-18_22_38.268/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir deals-groupon
cd deals-groupon
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/groupon.com/showDealByBiz/2016-06-07-18_17_06.742/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir movie-fandango-movie
cd movie-fandango-movie
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/fandango.com/showMovieDetailsByMovieId/2016-06-07-18_22_47.951/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-techcrunch
cd news-techcrunch
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/techcrunch.com/showArticleDetail/2016-06-07-18_20_49.731/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-timesofindia
cd news-timesofindia
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/timesofindia.indiatimes.com/showNewsById/2016-06-07-18_19_30.497/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cricbuzz
cd news-cricbuzz
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/cricbuzz.com/showCricketNewsById/2016-06-07-18_19_57.844/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-nbcnews
cd news-nbcnews
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/nbcnews.com/showNews/2016-06-07-18_23_22.095/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir ecom-flipkart
cd ecom-flipkart
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/flipkart.com/showProductById/2016-06-07-18_17_36.514/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-engadget
cd news-engadget
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/engadget.com/showArticleByDetails/2016-06-07-18_23_47.313/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-washingtonpost
cd news-washingtonpost
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/washingtonpost.com/showArticleByDetails/2016-06-07-18_24_07.451/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-theguardian
cd news-theguardian
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/theguardian.com/showNewsByNewsUrl/2016-06-07-18_20_18.311/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-abcnews
cd news-abcnews
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/abcnews.go.com/showNewsItem/2016-06-07-00_23_37.040/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
wc -l */part
