#!/bin/bash
mkdir hotels-airbnb
cd hotels-airbnb
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/airbnb.com/showRoom/2016-06-07-18_01_12.414/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir event-yelp
cd event-yelp
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/yelp.com/showEventById/2016-06-07-18_19_31.277/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir hotels-goibibo
cd hotels-goibibo
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/goibibo.com/showHotelDetails/2016-06-07-18_11_36.254/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir movie-hulu
cd movie-hulu
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/hulu.com/showMovie/2016-06-07-18_18_49.272/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir tv-hulu
cd tv-hulu
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/hulu.com/viewShow/2016-06-07-18_22_58.190/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-foxnews
cd news-foxnews
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/foxnews.com/showArticle/2016-06-07-18_23_00.743/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir music-gaana
cd music-gaana
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/gaana.com/playSongByName/2016-06-07-18_12_32.481/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-buzzfeed
cd news-buzzfeed
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/buzzfeed.com/showArticleById/2016-06-07-18_23_11.560/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir movie-bookmyshow
cd movie-bookmyshow
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/bookmyshow.com/showMovieDetails/2016-06-07-18_10_51.401/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir deals-livingsocial
cd deals-livingsocial
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/livingsocial.com/showDeal/2016-06-07-18_13_02.448/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-rediff
cd news-rediff
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/rediff.com/showNewsArticleById/2016-06-07-18_22_22.720/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir event-meetup
cd event-meetup
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/meetup.com/showEventDetailsById/2016-06-07-18_07_39.628/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cnn
cd news-cnn
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/cnn.com/showNews/2016-06-07-18_22_39.763/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir tv-abc
cd tv-abc
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/abc.go.com/showSeries/2016-06-07-18_11_28.060/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir event-eventful
cd event-eventful
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/eventful.com/showEventById/2016-06-07-18_11_04.235/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-bleacherreport
cd news-bleacherreport
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/bleacherreport.com/showArticleById/2016-06-07-18_21_37.720/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir deals-groupon
cd deals-groupon
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/groupon.com/showDealByBiz/2016-06-07-18_22_07.306/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir movie-fandango-movie
cd movie-fandango-movie
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/fandango.com/showMovieDetailsByMovieId/2016-06-07-18_18_21.937/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir celebrity-tmz
cd celebrity-tmz
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/tmz.com/showCelebById/2016-06-07-18_19_21.300/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir sports-espn
cd sports-espn
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/espn.go.com/showTeamById/2016-06-07-18_13_17.145/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir event-last-fm
cd event-last-fm
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/last.fm/showEventById/2016-06-07-18_18_32.453/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir music-last-fm
cd music-last-fm
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/last.fm/showAlbumById/2016-06-07-18_19_58.698/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-techcrunch
cd news-techcrunch
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/techcrunch.com/showArticleDetail/2016-06-07-18_22_05.784/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir video-youtube
cd video-youtube
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/youtube.com/watchVideo/2016-06-07-18_23_12.807/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-timesofindia
cd news-timesofindia
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/timesofindia.indiatimes.com/showNewsById/2016-06-07-18_22_50.063/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cricbuzz
cd news-cricbuzz
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/cricbuzz.com/showCricketNewsById/2016-06-07-18_21_29.203/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-nbcnews
cd news-nbcnews
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/nbcnews.com/showNews/2016-06-07-18_22_13.493/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir ecom-flipkart
cd ecom-flipkart
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/flipkart.com/showProductById/2016-06-07-18_13_29.595/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir local-yellowpage
cd local-yellowpage
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/yellowpages.com/showBiz/2016-06-07-00_33_40.373/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-engadget
cd news-engadget
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/engadget.com/showArticleByDetails/2016-06-07-18_21_46.678/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-washingtonpost
cd news-washingtonpost
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/washingtonpost.com/showArticleByDetails/2016-06-07-18_21_55.608/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-theguardian
cd news-theguardian
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/theguardian.com/showNewsByNewsUrl/2016-06-07-18_23_22.702/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir tv-fox
cd tv-fox
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/fox.com/viewShowsDetails/2016-06-07-18_12_47.603/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-abcnews
cd news-abcnews
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/abcnews.go.com/showNewsItem/2016-06-07-00_12_10.840/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
wc -l */part
