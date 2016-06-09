#!/bin/bash
mkdir realestate-zillow
cd realestate-zillow
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/zillow.com/showHomeDetails/2016-06-08-09_57_22.565/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-timesofindia
cd news-timesofindia
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/timesofindia.indiatimes.com/showNewsById/2016-06-08-16_42_20.608/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir event-yelp
cd event-yelp
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/yelp.com/showEventById/2016-06-07-18_39_47.206/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir realestate-magicbricks
cd realestate-magicbricks
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/magicbricks.com/showPropertyDetailById/2016-06-08-13_49_13.577/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-theguardian
cd news-theguardian
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/theguardian.com/showNewsByNewsUrl/2016-06-08-16_38_25.146/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir deals-groupon
cd deals-groupon
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/groupon.com/showDealByBiz/2016-06-07-18_42_52.959/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-nbcnews
cd news-nbcnews
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/nbcnews.com/showNews/2016-06-08-16_42_47.464/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-bleacherreport
cd news-bleacherreport
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/bleacherreport.com/showArticleById/2016-06-08-16_40_29.883/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cricbuzz
cd news-cricbuzz
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/cricbuzz.com/showCricketNewsById/2016-06-08-16_41_59.020/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-foxnews
cd news-foxnews
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/foxnews.com/showArticle/2016-06-08-16_38_00.954/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir event-eventful
cd event-eventful
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/eventful.com/showEventById/2016-06-07-18_40_27.627/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-rediff
cd news-rediff
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/rediff.com/showNewsArticleById/2016-06-08-16_38_53.581/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-washingtonpost
cd news-washingtonpost
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/washingtonpost.com/showArticleByDetails/2016-06-08-16_40_05.408/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir movie-fandango-movie
cd movie-fandango-movie
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/fandango.com/showMovieDetailsByMovieId/2016-06-08-08_50_14.987/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir hotels-expedia
cd hotels-expedia
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/expedia.com/showHotelDetailsByHotelId/2016-06-08-13_41_38.653/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir movie-hulu
cd movie-hulu
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/hulu.com/showMovie/2016-06-07-18_35_41.458/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir tv-hulu
cd tv-hulu
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/hulu.com/viewShow/2016-06-07-18_44_06.266/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir video-youtube
cd video-youtube
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/youtube.com/watchVideo/2016-06-07-18_39_17.459/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir celebrity-tmz
cd celebrity-tmz
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/tmz.com/showCelebById/2016-06-07-18_38_57.069/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-engadget
cd news-engadget
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/engadget.com/showArticleByDetails/2016-06-08-16_41_15.331/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir event-meetup
cd event-meetup
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/meetup.com/showEventDetailsById/2016-06-07-18_29_27.779/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-abcnews
cd news-abcnews
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/abcnews.go.com/showNewsItem/2016-06-08-16_53_49.250/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir ecom-snapdeal
cd ecom-snapdeal
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/snapdeal.com/showProductById/2016-06-08-09_40_31.129/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cnn
cd news-cnn
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/cnn.com/showNews/2016-06-08-16_43_10.809/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir movie-bookmyshow
cd movie-bookmyshow
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/bookmyshow.com/showMovieDetails/2016-06-07-18_37_24.857/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir deals-livingsocial
cd deals-livingsocial
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/livingsocial.com/showDeal/2016-06-07-18_36_33.970/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-techcrunch
cd news-techcrunch
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/techcrunch.com/showArticleDetail/2016-06-08-16_41_36.759/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir sports-espn
cd sports-espn
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/espn.go.com/showTeamById/2016-06-08-09_56_55.454/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir music-gaana
cd music-gaana
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/gaana.com/playSongByName/2016-06-07-18_38_29.609/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir music-last-fm
cd music-last-fm
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/last.fm/showAlbumById/2016-06-07-18_41_00.443/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir event-last-fm
cd event-last-fm
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/last.fm/showEventById/2016-06-07-18_38_01.983/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-buzzfeed
cd news-buzzfeed
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/buzzfeed.com/showArticleById/2016-06-08-16_39_40.106/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir ecom-askme
cd ecom-askme
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/askme.com/showProductById/2016-06-08-16_39_20.113/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir tv-fox
cd tv-fox
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/fox.com/viewShowsDetails/2016-06-07-18_36_10.989/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir event-eventbrite
cd event-eventbrite
s3cmd sync s3://quixey-prod/v4Content/trelleborg-1.0.54/us-direct/iibe/eventbrite.com/showEventDetailsById/2016-06-08-08_44_17.357/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
wc -l */part
