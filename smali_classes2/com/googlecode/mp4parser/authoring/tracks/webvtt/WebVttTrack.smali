.class public Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "WebVttTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack$BoxBearingSample;
    }
.end annotation


# static fields
.field private static final EMPTY_SAMPLE:Lcom/googlecode/mp4parser/authoring/Sample;

.field private static final WEBVTT_CUE_IDENTIFIER:Ljava/util/regex/Pattern;

.field private static final WEBVTT_CUE_IDENTIFIER_STRING:Ljava/lang/String; = "^(?!.*(-->)).*$"

.field private static final WEBVTT_CUE_SETTING:Ljava/util/regex/Pattern;

.field private static final WEBVTT_CUE_SETTING_STRING:Ljava/lang/String; = "\\S*:\\S*"

.field private static final WEBVTT_FILE_HEADER:Ljava/util/regex/Pattern;

.field private static final WEBVTT_FILE_HEADER_STRING:Ljava/lang/String; = "^\ufeff?WEBVTT((\\u0020|\t).*)?$"

.field private static final WEBVTT_METADATA_HEADER:Ljava/util/regex/Pattern;

.field private static final WEBVTT_METADATA_HEADER_STRING:Ljava/lang/String; = "\\S*[:=]\\S*"

.field private static final WEBVTT_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final WEBVTT_TIMESTAMP_STRING:Ljava/lang/String; = "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"


# instance fields
.field sampleDurations:[J

.field sampleEntry:Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;

.field samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "^\ufeff?WEBVTT((\\u0020|\t).*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 36
    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->WEBVTT_FILE_HEADER:Ljava/util/regex/Pattern;

    .line 41
    const-string/jumbo v0, "\\S*[:=]\\S*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 40
    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->WEBVTT_METADATA_HEADER:Ljava/util/regex/Pattern;

    .line 45
    const-string/jumbo v0, "^(?!.*(-->)).*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 44
    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->WEBVTT_CUE_IDENTIFIER:Ljava/util/regex/Pattern;

    .line 48
    const-string/jumbo v0, "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->WEBVTT_TIMESTAMP:Ljava/util/regex/Pattern;

    .line 51
    const-string/jumbo v0, "\\S*:\\S*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->WEBVTT_CUE_SETTING:Ljava/util/regex/Pattern;

    .line 54
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack$1;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack$1;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->EMPTY_SAMPLE:Lcom/googlecode/mp4parser/authoring/Sample;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 26
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "trackName"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v20, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct/range {v20 .. v20}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 115
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->samples:Ljava/util/List;

    .line 116
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->sampleDurations:[J

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x3e8

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 124
    const-wide/16 v12, 0x0

    .line 126
    .local v12, "mediaTimestampUs":J
    new-instance v20, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct/range {v20 .. v20}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 128
    new-instance v20, Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;

    invoke-direct/range {v20 .. v20}, Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->sampleEntry:Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->sampleEntry:Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 130
    new-instance v18, Lcom/mp4parser/iso14496/part30/WebVTTConfigurationBox;

    invoke-direct/range {v18 .. v18}, Lcom/mp4parser/iso14496/part30/WebVTTConfigurationBox;-><init>()V

    .line 131
    .local v18, "webVttConf":Lcom/mp4parser/iso14496/part30/WebVTTConfigurationBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->sampleEntry:Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->sampleEntry:Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;

    move-object/from16 v20, v0

    new-instance v21, Lcom/mp4parser/iso14496/part30/WebVTTSourceLabelBox;

    invoke-direct/range {v21 .. v21}, Lcom/mp4parser/iso14496/part30/WebVTTSourceLabelBox;-><init>()V

    invoke-virtual/range {v20 .. v21}, Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 134
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    const-string/jumbo v21, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct/range {v19 .. v20}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 138
    .local v19, "webvttData":Ljava/io/BufferedReader;
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "line":Ljava/lang/String;
    if-eqz v9, :cond_0

    sget-object v20, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->WEBVTT_FILE_HEADER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->matches()Z

    move-result v20

    if-nez v20, :cond_1

    .line 140
    :cond_0
    new-instance v20, Ljava/io/IOException;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "Expected WEBVTT. Got "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 142
    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lcom/mp4parser/iso14496/part30/WebVTTConfigurationBox;->getConfig()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mp4parser/iso14496/part30/WebVTTConfigurationBox;->setConfig(Ljava/lang/String;)V

    .line 144
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 145
    if-nez v9, :cond_2

    .line 147
    new-instance v20, Ljava/io/IOException;

    const-string/jumbo v21, "Expected an empty line after webvtt header"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 148
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 162
    :cond_3
    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    .line 234
    return-void

    .line 153
    :cond_4
    sget-object v20, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->WEBVTT_METADATA_HEADER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 154
    .local v10, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-nez v20, :cond_5

    .line 155
    new-instance v20, Ljava/io/IOException;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "Expected WebVTT metadata header. Got "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 157
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lcom/mp4parser/iso14496/part30/WebVTTConfigurationBox;->getConfig()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mp4parser/iso14496/part30/WebVTTConfigurationBox;->setConfig(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v10    # "matcher":Ljava/util/regex/Matcher;
    :cond_6
    const-string/jumbo v20, ""

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 167
    sget-object v20, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->WEBVTT_CUE_IDENTIFIER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 168
    .restart local v10    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 170
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 177
    :cond_7
    sget-object v20, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->WEBVTT_TIMESTAMP:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 180
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-nez v20, :cond_8

    .line 181
    new-instance v20, Ljava/io/IOException;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "Expected cue start time: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 183
    :cond_8
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v16

    .line 188
    .local v16, "startTime":J
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-nez v20, :cond_9

    .line 189
    new-instance v20, Ljava/io/IOException;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "Expected cue end time: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 191
    :cond_9
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, "endTimeString":Ljava/lang/String;
    invoke-static {v8}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v6

    .line 196
    .local v6, "endTime":J
    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 197
    sget-object v20, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->WEBVTT_CUE_SETTING:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 198
    const/4 v14, 0x0

    .line 199
    .local v14, "settings":Ljava/lang/String;
    :goto_2
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-nez v20, :cond_d

    .line 202
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v11, "payload":Ljava/lang/StringBuilder;
    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 210
    :cond_a
    cmp-long v20, v16, v12

    if-eqz v20, :cond_b

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->sampleDurations:[J

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sub-long v24, v16, v12

    aput-wide v24, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/googlecode/mp4parser/util/Mp4Arrays;->copyOfAndAppend([J[J)[J

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->sampleDurations:[J

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->samples:Ljava/util/List;

    move-object/from16 v20, v0

    sget-object v21, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->EMPTY_SAMPLE:Lcom/googlecode/mp4parser/authoring/Sample;

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->sampleDurations:[J

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sub-long v24, v6, v16

    aput-wide v24, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/googlecode/mp4parser/util/Mp4Arrays;->copyOfAndAppend([J[J)[J

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->sampleDurations:[J

    .line 216
    new-instance v15, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/VTTCueBox;

    invoke-direct {v15}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/VTTCueBox;-><init>()V

    .line 217
    .local v15, "vttCueBox":Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/VTTCueBox;
    if-eqz v14, :cond_c

    .line 218
    new-instance v4, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/CueSettingsBox;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/CueSettingsBox;-><init>()V

    .line 219
    .local v4, "csb":Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/CueSettingsBox;
    invoke-virtual {v4, v14}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/CueSettingsBox;->setContent(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v15, v4}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/VTTCueBox;->setCueSettingsBox(Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/CueSettingsBox;)V

    .line 222
    .end local v4    # "csb":Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/CueSettingsBox;
    :cond_c
    new-instance v5, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/CuePayloadBox;

    invoke-direct {v5}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/CuePayloadBox;-><init>()V

    .line 223
    .local v5, "cuePayloadBox":Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/CuePayloadBox;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/CuePayloadBox;->setContent(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v15, v5}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/VTTCueBox;->setCuePayloadBox(Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/CuePayloadBox;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->samples:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack$BoxBearingSample;

    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack$BoxBearingSample;-><init>(Ljava/util/List;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    move-wide v12, v6

    goto/16 :goto_1

    .line 200
    .end local v5    # "cuePayloadBox":Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/CuePayloadBox;
    .end local v11    # "payload":Ljava/lang/StringBuilder;
    .end local v15    # "vttCueBox":Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/VTTCueBox;
    :cond_d
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 204
    .restart local v11    # "payload":Ljava/lang/StringBuilder;
    :cond_e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_f

    .line 205
    const-string/jumbo v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_f
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method private static parseTimestampUs(Ljava/lang/String;)J
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 237
    const-string/jumbo v5, "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"

    invoke-virtual {p0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 238
    new-instance v4, Ljava/lang/NumberFormatException;

    const-string/jumbo v5, "has invalid format"

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 241
    :cond_0
    const-string/jumbo v5, "\\."

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "parts":[Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 243
    .local v2, "value":J
    aget-object v5, v1, v4

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-lt v4, v6, :cond_1

    .line 246
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    return-wide v4

    .line 243
    :cond_1
    aget-object v0, v5, v4

    .line 244
    .local v0, "group":Ljava/lang/String;
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long v2, v8, v10

    .line 243
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    return-void
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const-string/jumbo v0, "text"

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSampleDurations()[J
    .locals 6

    .prologue
    .line 256
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->sampleDurations:[J

    array-length v2, v2

    new-array v0, v2, [J

    .line 257
    .local v0, "adoptedSampleDuration":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 260
    return-object v0

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->sampleDurations:[J

    aget-wide v2, v2, v1

    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
