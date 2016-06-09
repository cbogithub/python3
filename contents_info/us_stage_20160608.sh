#!/bin/bash
mkdir realestate-zillow
cd realestate-zillow
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/zillow.com/showHomeDetails/2016-06-08-09_48_35.278/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-timesofindia
cd news-timesofindia
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/timesofindia.indiatimes.com/showNewsById/2016-06-08-16_56_07.305/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir realestate-magicbricks
cd realestate-magicbricks
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/magicbricks.com/showPropertyDetailById/2016-06-08-13_28_21.386/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-theguardian
cd news-theguardian
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/theguardian.com/showNewsByNewsUrl/2016-06-08-16_55_48.770/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-nbcnews
cd news-nbcnews
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/nbcnews.com/showNews/2016-06-08-16_54_15.645/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-bleacherreport
cd news-bleacherreport
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/bleacherreport.com/showArticleById/2016-06-08-16_52_46.325/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cricbuzz
cd news-cricbuzz
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/cricbuzz.com/showCricketNewsById/2016-06-08-16_53_06.037/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-foxnews
cd news-foxnews
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/foxnews.com/showArticle/2016-06-08-16_55_32.085/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-rediff
cd news-rediff
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/rediff.com/showNewsArticleById/2016-06-08-16_54_35.723/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-washingtonpost
cd news-washingtonpost
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/washingtonpost.com/showArticleByDetails/2016-06-08-16_55_10.497/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir movie-fandango-movie
cd movie-fandango-movie
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/fandango.com/showMovieDetailsByMovieId/2016-06-08-09_39_45.938/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir hotels-expedia
cd hotels-expedia
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/expedia.com/showHotelDetailsByHotelId/2016-06-08-13_39_58.009/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir music-saavn
cd music-saavn
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/saavn.com/showAlbumDetails/2016-06-08-09_44_44.435/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir video-youtube
cd video-youtube
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/youtube.com/watchVideo/2016-06-07-18_49_02.118/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-engadget
cd news-engadget
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/engadget.com/showArticleByDetails/2016-06-08-16_52_57.521/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-abcnews
cd news-abcnews
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/abcnews.go.com/showNewsItem/2016-06-08-17_06_43.965/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir ecom-snapdeal
cd ecom-snapdeal
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/snapdeal.com/showProductById/2016-06-08-09_39_59.654/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cnn
cd news-cnn
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/cnn.com/showNews/2016-06-08-16_53_14.222/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-techcrunch
cd news-techcrunch
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/techcrunch.com/showArticleDetail/2016-06-08-16_45_49.475/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir sports-espn
cd sports-espn
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/espn.go.com/showTeamById/2016-06-08-09_44_31.086/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-buzzfeed
cd news-buzzfeed
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/buzzfeed.com/showArticleById/2016-06-08-16_53_45.539/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir event-eventbrite
cd event-eventbrite
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/eventbrite.com/showEventDetailsById/2016-06-08-09_33_34.695/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
wc -l */part
