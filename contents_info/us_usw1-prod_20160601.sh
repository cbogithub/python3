#!/bin/bash
mkdir news-techcrunch
cd news-techcrunch
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/techcrunch.com/showArticleDetail/2016-06-02-00_22_35.162/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-buzzfeed
cd news-buzzfeed
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/buzzfeed.com/showArticleById/2016-06-02-00_21_41.817/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cnn
cd news-cnn
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/cnn.com/showNews/2016-06-02-00_19_57.182/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-nbcnews
cd news-nbcnews
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/nbcnews.com/showNews/2016-06-02-00_24_36.165/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-abcnews
cd news-abcnews
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/abcnews.go.com/showNewsItem/2016-06-02-00_25_51.441/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-rediff
cd news-rediff
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/rediff.com/showNewsArticleById/2016-06-02-00_23_47.290/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-timesofindia
cd news-timesofindia
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/timesofindia.indiatimes.com/showNewsById/2016-06-02-00_20_35.478/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-foxnews
cd news-foxnews
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/foxnews.com/showArticle/2016-06-02-00_22_10.767/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir movie-bookmyshow
cd movie-bookmyshow
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/bookmyshow.com/showMovieDetails/2016-06-01-20_58_38.772/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir hotels-makemytrip
cd hotels-makemytrip
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/makemytrip.com/showHotelById/2016-06-01-20_44_54.638/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir ecom-askme
cd ecom-askme
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/askme.com/showProductById/2016-06-01-20_29_14.519/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-engadget
cd news-engadget
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/engadget.com/showArticleByDetails/2016-06-02-00_21_20.136/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-washingtonpost
cd news-washingtonpost
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/washingtonpost.com/showArticleByDetails/2016-06-02-00_16_34.402/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cricbuzz
cd news-cricbuzz
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/cricbuzz.com/showCricketNewsById/2016-06-02-00_23_25.877/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir ecom-flipkart
cd ecom-flipkart
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/flipkart.com/showProductById/2016-06-01-19_17_29.680/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir music-gaana
cd music-gaana
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/gaana.com/playSongByName/2016-06-01-20_50_13.505/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-bleacherreport
cd news-bleacherreport
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/bleacherreport.com/showArticleById/2016-06-02-00_25_27.977/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir hotels-goibibo
cd hotels-goibibo
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/goibibo.com/showHotelDetails/2016-06-01-20_42_01.225/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-theguardian
cd news-theguardian
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/theguardian.com/showNewsByNewsUrl/2016-06-02-00_22_56.700/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
wc -l */part
