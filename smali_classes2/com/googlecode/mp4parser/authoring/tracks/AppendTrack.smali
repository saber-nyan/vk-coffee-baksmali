.class public Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "AppendTrack.java"


# static fields
.field private static LOG:Lcom/googlecode/mp4parser/util/Logger;


# instance fields
.field decodingTimes:[J

.field lists:Ljava/util/List;
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

.field tracks:[Lcom/googlecode/mp4parser/authoring/Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/Logger;->getLogger(Ljava/lang/Class;)Lcom/googlecode/mp4parser/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    return-void
.end method

.method public varargs constructor <init>([Lcom/googlecode/mp4parser/authoring/Track;)V
    .locals 10
    .param p1, "tracks"    # [Lcom/googlecode/mp4parser/authoring/Track;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 50
    invoke-static {p1}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->appendTracknames([Lcom/googlecode/mp4parser/authoring/Track;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    .line 53
    array-length v7, p1

    move v6, v5

    :goto_0
    if-lt v6, v7, :cond_0

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->lists:Ljava/util/List;

    .line 65
    array-length v6, p1

    move v4, v5

    :goto_1
    if-lt v4, v6, :cond_2

    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, "numSamples":I
    array-length v6, p1

    move v4, v5

    :goto_2
    if-lt v4, v6, :cond_3

    .line 74
    new-array v4, v2, [J

    iput-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->decodingTimes:[J

    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, "index":I
    array-length v6, p1

    move v4, v5

    :goto_3
    if-lt v4, v6, :cond_4

    .line 82
    return-void

    .line 53
    .end local v1    # "index":I
    .end local v2    # "numSamples":I
    :cond_0
    aget-object v3, p1, v6

    .line 55
    .local v3, "track":Lcom/googlecode/mp4parser/authoring/Track;
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    if-nez v4, :cond_1

    .line 56
    new-instance v4, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 57
    iget-object v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v4

    const-class v9, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    invoke-virtual {v4, v9}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/Box;

    invoke-virtual {v8, v4}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 53
    :goto_4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 59
    :cond_1
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v8

    invoke-direct {p0, v4, v8}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->mergeStsds(Lcom/coremedia/iso/boxes/SampleDescriptionBox;Lcom/coremedia/iso/boxes/SampleDescriptionBox;)Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v4

    iput-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    goto :goto_4

    .line 65
    .end local v3    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_2
    aget-object v3, p1, v4

    .line 67
    .restart local v3    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->lists:Ljava/util/List;

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 71
    .end local v3    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    .restart local v2    # "numSamples":I
    :cond_3
    aget-object v3, p1, v4

    .line 72
    .restart local v3    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v7

    array-length v7, v7

    add-int/2addr v2, v7

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 77
    .end local v3    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    .restart local v1    # "index":I
    :cond_4
    aget-object v3, p1, v4

    .line 78
    .restart local v3    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v0

    .line 79
    .local v0, "durs":[J
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->decodingTimes:[J

    array-length v8, v0

    invoke-static {v0, v5, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    array-length v7, v0

    add-int/2addr v1, v7

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public static varargs appendTracknames([Lcom/googlecode/mp4parser/authoring/Track;)Ljava/lang/String;
    .locals 7
    .param p0, "tracks"    # [Lcom/googlecode/mp4parser/authoring/Track;

    .prologue
    const/4 v3, 0x0

    .line 85
    const-string/jumbo v0, ""

    .line 86
    .local v0, "name":Ljava/lang/String;
    array-length v4, p0

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 86
    :cond_0
    aget-object v1, p0, v2

    .line 87
    .local v1, "track":Lcom/googlecode/mp4parser/authoring/Track;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private mergeAudioSampleEntries(Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    .locals 18
    .param p1, "ase1"    # Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    .param p2, "ase2"    # Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    .prologue
    .line 214
    new-instance v2, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    .line 215
    .local v2, "ase":Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerFrame()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerFrame()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_2

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerFrame()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setBytesPerFrame(J)V

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerPacket()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerPacket()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_3

    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerPacket()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setBytesPerPacket(J)V

    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerSample()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerSample()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_4

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerSample()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setBytesPerSample(J)V

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v14

    if-ne v13, v14, :cond_5

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getPacketSize()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getPacketSize()I

    move-result v14

    if-ne v13, v14, :cond_6

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getPacketSize()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setPacketSize(I)V

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getCompressionId()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getCompressionId()I

    move-result v14

    if-ne v13, v14, :cond_7

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getCompressionId()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setCompressionId(I)V

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_8

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I

    move-result v14

    if-ne v13, v14, :cond_9

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSamplesPerPacket()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSamplesPerPacket()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_a

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSamplesPerPacket()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSamplesPerPacket(J)V

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion()I

    move-result v14

    if-ne v13, v14, :cond_b

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSoundVersion(I)V

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion2Data()[B

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion2Data()[B

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion2Data()[B

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSoundVersion2Data([B)V

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ne v13, v14, :cond_1

    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 275
    .local v5, "bxs1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 276
    .local v6, "bxs2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_d

    .line 301
    .end local v2    # "ase":Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    .end local v5    # "bxs1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v6    # "bxs2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    :cond_1
    :goto_1
    return-object v2

    .line 218
    .restart local v2    # "ase":Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    :cond_2
    sget-object v13, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string/jumbo v14, "BytesPerFrame differ"

    invoke-virtual {v13, v14}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 219
    const/4 v2, 0x0

    goto :goto_1

    .line 224
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 229
    :cond_4
    sget-object v13, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string/jumbo v14, "BytesPerSample differ"

    invoke-virtual {v13, v14}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 230
    const/4 v2, 0x0

    goto :goto_1

    .line 235
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 240
    :cond_6
    sget-object v13, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string/jumbo v14, "ChannelCount differ"

    invoke-virtual {v13, v14}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 241
    const/4 v2, 0x0

    goto :goto_1

    .line 246
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 251
    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 256
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 261
    :cond_a
    const/4 v2, 0x0

    goto :goto_1

    .line 266
    :cond_b
    const/4 v2, 0x0

    goto :goto_1

    .line 271
    :cond_c
    const/4 v2, 0x0

    goto :goto_1

    .line 277
    .restart local v5    # "bxs1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v6    # "bxs2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/Box;

    .line 278
    .local v7, "cur1":Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coremedia/iso/boxes/Box;

    .line 279
    .local v8, "cur2":Lcom/coremedia/iso/boxes/Box;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 280
    .local v3, "baos1":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 282
    .local v4, "baos2":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v13

    invoke-interface {v7, v13}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 283
    invoke-static {v4}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v13

    invoke-interface {v8, v13}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 289
    invoke-virtual {v2, v7}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 284
    :catch_0
    move-exception v9

    .line 285
    .local v9, "e":Ljava/io/IOException;
    sget-object v13, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/googlecode/mp4parser/util/Logger;->logWarn(Ljava/lang/String;)V

    .line 286
    const/4 v2, 0x0

    goto :goto_1

    .line 291
    .end local v9    # "e":Ljava/io/IOException;
    :cond_e
    const-string/jumbo v13, "esds"

    invoke-interface {v7}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "esds"

    invoke-interface {v8}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v11, v7

    .line 292
    check-cast v11, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    .local v11, "esdsBox1":Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    move-object v12, v8

    .line 293
    check-cast v12, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    .line 294
    .local v12, "esdsBox2":Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    invoke-virtual {v11}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->getEsDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-result-object v13

    invoke-virtual {v12}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->getEsDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->mergeDescriptors(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-result-object v10

    .line 295
    .local v10, "esd":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    invoke-virtual {v11, v10}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;)V

    .line 296
    invoke-virtual {v2, v7}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_0
.end method

.method private mergeDescriptors(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    .locals 10
    .param p1, "des1"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
    .param p2, "des2"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    .prologue
    const/4 v4, 0x0

    .line 307
    instance-of v5, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    if-eqz v5, :cond_19

    instance-of v5, p2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    if-eqz v5, :cond_19

    move-object v2, p1

    .line 308
    check-cast v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    .local v2, "esds1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    move-object v3, p2

    .line 309
    check-cast v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    .line 310
    .local v3, "esds2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLFlag()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLFlag()I

    move-result v6

    if-eq v5, v6, :cond_1

    move-object v2, v4

    .line 385
    .end local v2    # "esds1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    .end local v3    # "esds2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    :cond_0
    :goto_0
    return-object v2

    .line 313
    .restart local v2    # "esds1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    .restart local v3    # "esds2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    :cond_1
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLLength()I

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLLength()I

    .line 316
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDependsOnEsId()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDependsOnEsId()I

    move-result v6

    if-eq v5, v6, :cond_2

    move-object v2, v4

    .line 317
    goto :goto_0

    .line 319
    :cond_2
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getEsId()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getEsId()I

    move-result v6

    if-eq v5, v6, :cond_3

    move-object v2, v4

    .line 320
    goto :goto_0

    .line 322
    :cond_3
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCREsId()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCREsId()I

    move-result v6

    if-eq v5, v6, :cond_4

    move-object v2, v4

    .line 323
    goto :goto_0

    .line 325
    :cond_4
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCRstreamFlag()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCRstreamFlag()I

    move-result v6

    if-eq v5, v6, :cond_5

    move-object v2, v4

    .line 326
    goto :goto_0

    .line 328
    :cond_5
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getRemoteODFlag()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getRemoteODFlag()I

    move-result v6

    if-eq v5, v6, :cond_6

    move-object v2, v4

    .line 329
    goto :goto_0

    .line 331
    :cond_6
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamDependenceFlag()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamDependenceFlag()I

    move-result v6

    if-eq v5, v6, :cond_7

    move-object v2, v4

    .line 332
    goto :goto_0

    .line 334
    :cond_7
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamPriority()I

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamPriority()I

    .line 337
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    :goto_1
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 341
    :cond_8
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v0

    .line 342
    .local v0, "dcd1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v1

    .line 344
    .local v1, "dcd2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    move-result-object v5

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    move-object v2, v4

    .line 345
    goto/16 :goto_0

    .line 337
    .end local v0    # "dcd1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    .end local v1    # "dcd2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    :cond_9
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    goto :goto_1

    .line 340
    :cond_a
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v5

    if-nez v5, :cond_8

    .line 376
    :cond_b
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    :cond_c
    move-object v2, v4

    .line 377
    goto/16 :goto_0

    .line 347
    .restart local v0    # "dcd1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    .restart local v1    # "dcd2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    :cond_d
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAvgBitRate()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAvgBitRate()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_e

    .line 348
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAvgBitRate()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAvgBitRate()J

    move-result-wide v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAvgBitRate(J)V

    .line 350
    :cond_e
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getBufferSizeDB()I

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getBufferSizeDB()I

    .line 354
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v5

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    :cond_f
    move-object v2, v4

    .line 355
    goto/16 :goto_0

    .line 354
    :cond_10
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v5

    if-nez v5, :cond_f

    .line 358
    :cond_11
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getMaxBitRate()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getMaxBitRate()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_12

    .line 359
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getMaxBitRate()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getMaxBitRate()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setMaxBitRate(J)V

    .line 361
    :cond_12
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getProfileLevelIndicationDescriptors()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getProfileLevelIndicationDescriptors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    move-object v2, v4

    .line 362
    goto/16 :goto_0

    .line 365
    :cond_13
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getObjectTypeIndication()I

    move-result v5

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getObjectTypeIndication()I

    move-result v6

    if-eq v5, v6, :cond_14

    move-object v2, v4

    .line 366
    goto/16 :goto_0

    .line 368
    :cond_14
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getStreamType()I

    move-result v5

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getStreamType()I

    move-result v6

    if-eq v5, v6, :cond_15

    move-object v2, v4

    .line 369
    goto/16 :goto_0

    .line 371
    :cond_15
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getUpStream()I

    move-result v5

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getUpStream()I

    move-result v6

    if-eq v5, v6, :cond_b

    move-object v2, v4

    .line 372
    goto/16 :goto_0

    .line 376
    .end local v0    # "dcd1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    .end local v1    # "dcd2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    :cond_16
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_c

    .line 379
    :cond_17
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_2
    move-object v2, v4

    .line 380
    goto/16 :goto_0

    .line 379
    :cond_18
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 384
    .end local v2    # "esds1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    .end local v3    # "esds2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    :cond_19
    sget-object v5, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string/jumbo v6, "I can only merge ESDescriptors"

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    move-object v2, v4

    .line 385
    goto/16 :goto_0
.end method

.method private mergeSampleEntry(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    .locals 3
    .param p1, "se1"    # Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    .param p2, "se2"    # Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-interface {p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    .end local p1    # "se1":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    .end local p2    # "se2":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    :cond_0
    :goto_0
    return-object v0

    .line 125
    .restart local p1    # "se1":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    .restart local p2    # "se2":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    :cond_1
    instance-of v1, p1, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    if-eqz v1, :cond_2

    instance-of v1, p2, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    if-eqz v1, :cond_2

    .line 126
    check-cast p1, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    .end local p1    # "se1":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    check-cast p2, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    .end local p2    # "se2":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->mergeVisualSampleEntry(Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    move-result-object v0

    goto :goto_0

    .line 127
    .restart local p1    # "se1":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    .restart local p2    # "se2":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    :cond_2
    instance-of v1, p1, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    if-eqz v1, :cond_0

    instance-of v1, p2, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    if-eqz v1, :cond_0

    .line 128
    check-cast p1, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    .end local p1    # "se1":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    check-cast p2, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    .end local p2    # "se2":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->mergeAudioSampleEntries(Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    move-result-object v0

    goto :goto_0
.end method

.method private mergeStsds(Lcom/coremedia/iso/boxes/SampleDescriptionBox;Lcom/coremedia/iso/boxes/SampleDescriptionBox;)Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 10
    .param p1, "stsd1"    # Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .param p2, "stsd2"    # Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 99
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 100
    .local v1, "curBaos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    .local v4, "refBaos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 103
    invoke-static {v4}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 109
    .local v0, "cur":[B
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 111
    .local v3, "ref":[B
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_0

    .line 112
    const-class v6, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    invoke-virtual {p1, v6}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    const-class v7, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    invoke-virtual {p2, v7}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    invoke-direct {p0, v6, v7}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->mergeSampleEntry(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    move-result-object v5

    .line 113
    .local v5, "se":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    if-eqz v5, :cond_1

    .line 114
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->setBoxes(Ljava/util/List;)V

    .line 119
    .end local v0    # "cur":[B
    .end local v3    # "ref":[B
    .end local v5    # "se":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    .end local p1    # "stsd1":Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    :cond_0
    :goto_0
    return-object p1

    .line 104
    .restart local p1    # "stsd1":Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 106
    const/4 p1, 0x0

    goto :goto_0

    .line 116
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "cur":[B
    .restart local v3    # "ref":[B
    .restart local v5    # "se":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    :cond_1
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Cannot merge "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    invoke-virtual {p1, v8}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    invoke-virtual {p2, v8}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private mergeVisualSampleEntry(Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    .locals 14
    .param p1, "vse1"    # Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    .param p2, "vse2"    # Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    .prologue
    .line 135
    new-instance v8, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    invoke-direct {v8}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>()V

    .line 136
    .local v8, "vse":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHorizresolution()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHorizresolution()D

    move-result-wide v12

    cmpl-double v9, v10, v12

    if-nez v9, :cond_2

    .line 137
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHorizresolution()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 142
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getCompressorname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setCompressorname(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getDepth()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getDepth()I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 144
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getDepth()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    .line 150
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getFrameCount()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getFrameCount()I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 151
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getFrameCount()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    .line 157
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHeight()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHeight()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 158
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    .line 163
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getWidth()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_6

    .line 164
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 170
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getVertresolution()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getVertresolution()D

    move-result-wide v12

    cmpl-double v9, v10, v12

    if-nez v9, :cond_7

    .line 171
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getVertresolution()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    .line 177
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHorizresolution()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHorizresolution()D

    move-result-wide v12

    cmpl-double v9, v10, v12

    if-nez v9, :cond_8

    .line 178
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHorizresolution()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 184
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 185
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 186
    .local v2, "bxs1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 187
    .local v3, "bxs2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_9

    .line 210
    .end local v2    # "bxs1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v3    # "bxs2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v8    # "vse":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    :cond_1
    :goto_1
    return-object v8

    .line 139
    .restart local v8    # "vse":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    :cond_2
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string/jumbo v10, "Horizontal Resolution differs"

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 140
    const/4 v8, 0x0

    goto :goto_1

    .line 146
    :cond_3
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string/jumbo v10, "Depth differs"

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 147
    const/4 v8, 0x0

    goto :goto_1

    .line 153
    :cond_4
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string/jumbo v10, "frame count differs"

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 154
    const/4 v8, 0x0

    goto :goto_1

    .line 160
    :cond_5
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string/jumbo v10, "height differs"

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 161
    const/4 v8, 0x0

    goto :goto_1

    .line 166
    :cond_6
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string/jumbo v10, "width differs"

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 167
    const/4 v8, 0x0

    goto :goto_1

    .line 173
    :cond_7
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string/jumbo v10, "vert resolution differs"

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 174
    const/4 v8, 0x0

    goto :goto_1

    .line 180
    :cond_8
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string/jumbo v10, "horizontal resolution differs"

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 181
    const/4 v8, 0x0

    goto :goto_1

    .line 188
    .restart local v2    # "bxs1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v3    # "bxs2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/Box;

    .line 189
    .local v4, "cur1":Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/Box;

    .line 190
    .local v5, "cur2":Lcom/coremedia/iso/boxes/Box;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 191
    .local v0, "baos1":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 193
    .local v1, "baos2":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 194
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v9

    invoke-interface {v5, v9}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 200
    invoke-virtual {v8, v4}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_0

    .line 195
    :catch_0
    move-exception v6

    .line 196
    .local v6, "e":Ljava/io/IOException;
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logWarn(Ljava/lang/String;)V

    .line 197
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 202
    .end local v6    # "e":Ljava/io/IOException;
    :cond_a
    instance-of v9, v4, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;

    if-eqz v9, :cond_0

    instance-of v9, v5, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;

    if-eqz v9, :cond_0

    move-object v9, v4

    .line 203
    check-cast v9, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;

    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->getDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object v9

    check-cast v5, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;

    .end local v5    # "cur2":Lcom/coremedia/iso/boxes/Box;
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->getDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->mergeDescriptors(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-result-object v7

    .local v7, "esd":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
    move-object v9, v4

    .line 204
    check-cast v9, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;

    invoke-virtual {v9, v7}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->setDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;)V

    .line 205
    invoke-virtual {v8, v4}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 96
    return-void

    .line 93
    :cond_0
    aget-object v0, v2, v1

    .line 94
    .local v0, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->close()V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 404
    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v6, v6, v8

    invoke-interface {v6}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v6, v6, v8

    invoke-interface {v6}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 405
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 406
    .local v4, "lists":Ljava/util/List;, "Ljava/util/List<[I>;"
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v9, v7

    move v6, v8

    :goto_0
    if-lt v6, v9, :cond_1

    .line 409
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 410
    .local v1, "compositionTimeEntries":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 423
    .end local v1    # "compositionTimeEntries":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    .end local v4    # "lists":Ljava/util/List;, "Ljava/util/List<[I>;"
    :goto_1
    return-object v1

    .line 406
    .restart local v4    # "lists":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_1
    aget-object v5, v7, v6

    .line 407
    .local v5, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->blowupCompositionTimes(Ljava/util/List;)[I

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 410
    .end local v5    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    .restart local v1    # "compositionTimeEntries":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 411
    .local v3, "list":[I
    array-length v10, v3

    move v7, v8

    :goto_2
    if-ge v7, v10, :cond_0

    aget v0, v3, v7

    .line 412
    .local v0, "compositionTime":I
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v6

    if-eq v6, v0, :cond_4

    .line 413
    :cond_3
    new-instance v2, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    const/4 v6, 0x1

    invoke-direct {v2, v6, v0}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    .line 414
    .local v2, "e":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 411
    :goto_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_2

    .line 416
    .end local v2    # "e":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    :cond_4
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .line 417
    .restart local v2    # "e":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->setCount(I)V

    goto :goto_3

    .line 423
    .end local v0    # "compositionTime":I
    .end local v1    # "compositionTimeEntries":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    .end local v2    # "e":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    .end local v3    # "list":[I
    .end local v4    # "lists":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getHandler()Ljava/lang/String;
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 452
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 453
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 454
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;>;"
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v4, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 459
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;>;"
    :goto_1
    return-object v0

    .line 454
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;>;"
    :cond_0
    aget-object v1, v3, v2

    .line 455
    .local v1, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;>;"
    .end local v1    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public declared-synchronized getSampleDurations()[J
    .locals 1

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->decodingTimes:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    .line 392
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->lists:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    move-result-object v0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 20

    .prologue
    .line 428
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-interface {v11}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-interface {v11}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v11

    array-length v11, v11

    if-lez v11, :cond_5

    .line 429
    const/4 v4, 0x0

    .line 430
    .local v4, "numSyncSamples":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v14, v13

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-lt v12, v14, :cond_0

    .line 433
    new-array v7, v4, [J

    .line 435
    .local v7, "returnSyncSamples":[J
    const/4 v5, 0x0

    .line 436
    .local v5, "pos":I
    const-wide/16 v8, 0x0

    .line 437
    .local v8, "samplesBefore":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v14, v13

    const/4 v11, 0x0

    move v12, v11

    :goto_1
    if-lt v12, v14, :cond_2

    .line 447
    .end local v4    # "numSyncSamples":I
    .end local v5    # "pos":I
    .end local v7    # "returnSyncSamples":[J
    .end local v8    # "samplesBefore":J
    :goto_2
    return-object v7

    .line 430
    .restart local v4    # "numSyncSamples":I
    :cond_0
    aget-object v10, v13, v12

    .line 431
    .local v10, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v11

    array-length v11, v11

    :goto_3
    add-int/2addr v4, v11

    .line 430
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_0

    .line 431
    :cond_1
    const/4 v11, 0x0

    goto :goto_3

    .line 437
    .end local v10    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    .restart local v5    # "pos":I
    .restart local v7    # "returnSyncSamples":[J
    .restart local v8    # "samplesBefore":J
    :cond_2
    aget-object v10, v13, v12

    .line 438
    .restart local v10    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v11

    if-eqz v11, :cond_3

    .line 439
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v11, 0x0

    move v6, v5

    .end local v5    # "pos":I
    .local v6, "pos":I
    :goto_4
    move/from16 v0, v16

    if-lt v11, v0, :cond_4

    move v5, v6

    .line 443
    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    :cond_3
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    .line 437
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_1

    .line 439
    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    :cond_4
    aget-wide v2, v15, v11

    .line 440
    .local v2, "l":J
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    add-long v18, v8, v2

    aput-wide v18, v7, v6

    .line 439
    add-int/lit8 v11, v11, 0x1

    move v6, v5

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    goto :goto_4

    .line 447
    .end local v2    # "l":J
    .end local v4    # "numSyncSamples":I
    .end local v6    # "pos":I
    .end local v7    # "returnSyncSamples":[J
    .end local v8    # "samplesBefore":J
    .end local v10    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    return-object v0
.end method
