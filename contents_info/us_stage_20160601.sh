#!/bin/bash
mkdir news-techcrunch
cd news-techcrunch
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/techcrunch.com/showArticleDetail/2016-06-02-00_52_49.092/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-buzzfeed
cd news-buzzfeed
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/buzzfeed.com/showArticleById/2016-06-02-00_53_30.658/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cnn
cd news-cnn
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/cnn.com/showNews/2016-06-01-23_54_52.865/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-nbcnews
cd news-nbcnews
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/nbcnews.com/showNews/2016-06-02-00_53_16.131/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-abcnews
cd news-abcnews
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/abcnews.go.com/showNewsItem/2016-06-02-00_11_59.995/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-rediff
cd news-rediff
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/rediff.com/showNewsArticleById/2016-06-02-00_54_29.347/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-timesofindia
cd news-timesofindia
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/timesofindia.indiatimes.com/showNewsById/2016-06-02-00_52_57.357/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-foxnews
cd news-foxnews
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/foxnews.com/showArticle/2016-06-02-00_54_06.393/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-engadget
cd news-engadget
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/engadget.com/showArticleByDetails/2016-06-02-00_40_24.269/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-washingtonpost
cd news-washingtonpost
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/washingtonpost.com/showArticleByDetails/2016-06-02-00_54_17.891/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-cricbuzz
cd news-cricbuzz
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/cricbuzz.com/showCricketNewsById/2016-06-02-00_52_32.045/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-bleacherreport
cd news-bleacherreport
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/bleacherreport.com/showArticleById/2016-06-02-00_52_40.477/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
mkdir news-theguardian
cd news-theguardian
s3cmd sync s3://quixey-stage/v4Content/us-direct/iibe/theguardian.com/showNewsByNewsUrl/2016-06-02-00_53_46.946/iibe/ .
cat part-* > part
rm _*
rm part-*
ls -lh
cd ..
#
wc -l */part
