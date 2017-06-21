.class public Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack;
.source "H263TrackImpl.java"


# static fields
.field private static LOG:Ljava/util/logging/Logger;


# instance fields
.field BINARY:I

.field BINARY_ONLY:I

.field GRAYSCALE:I

.field RECTANGULAR:I

.field esdsComplete:Z

.field esdsStuff:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field fixed_vop_time_increment:I

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

.field vop_time_increment_resolution:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;)V
    .locals 34
    .param p1, "dataSource"    # Lcom/googlecode/mp4parser/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack;-><init>(Lcom/googlecode/mp4parser/DataSource;Z)V

    .line 41
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->RECTANGULAR:I

    .line 42
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->BINARY:I

    .line 43
    const/16 v28, 0x2

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->BINARY_ONLY:I

    .line 44
    const/16 v28, 0x3

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->GRAYSCALE:I

    .line 49
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->samples:Ljava/util/List;

    .line 50
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->esdsStuff:Ljava/util/List;

    .line 51
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->esdsComplete:Z

    .line 52
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->fixed_vop_time_increment:I

    .line 53
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->vop_time_increment_resolution:I

    .line 57
    new-instance v12, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;-><init>(Lcom/googlecode/mp4parser/DataSource;)V

    .line 59
    .local v12, "la":Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v19, "nalsInSample":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const/16 v26, 0x0

    .line 62
    .local v26, "visual_object_verid":I
    new-instance v13, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string/jumbo v28, "mp4v"

    move-object/from16 v0, v28

    invoke-direct {v13, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    .line 63
    .local v13, "mp4v":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    new-instance v28, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct/range {v28 .. v28}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 66
    const-wide/16 v14, 0x0

    .line 67
    .local v14, "last_sync_point":J
    const-wide/16 v16, -0x1

    .line 69
    .local v16, "last_time_code":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->findNextNal(Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;)Ljava/nio/ByteBuffer;

    move-result-object v18

    .local v18, "nal":Ljava/nio/ByteBuffer;
    if-nez v18, :cond_1

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->decodingTimes:[J

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [J

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->decodingTimes:[J

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->decodingTimes:[J

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    aget-wide v32, v31, v32

    aput-wide v32, v29, v30

    invoke-static/range {v28 .. v29}, Lcom/googlecode/mp4parser/util/Mp4Arrays;->copyOfAndAppend([J[J)[J

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->decodingTimes:[J

    .line 125
    new-instance v9, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    invoke-direct {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;-><init>()V

    .line 126
    .local v9, "esDescriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setEsId(I)V

    .line 127
    new-instance v7, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-direct {v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;-><init>()V

    .line 128
    .local v7, "decoderConfigDescriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    const/16 v28, 0x20

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setObjectTypeIndication(I)V

    .line 129
    const/16 v28, 0x4

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setStreamType(I)V

    .line 130
    new-instance v8, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    invoke-direct {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;-><init>()V

    .line 131
    .local v8, "decoderSpecificInfo":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->esdsStuff:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->createSampleObject(Ljava/util/List;)Lcom/googlecode/mp4parser/authoring/Sample;

    move-result-object v21

    .line 132
    .local v21, "s":Lcom/googlecode/mp4parser/authoring/Sample;
    invoke-interface/range {v21 .. v21}, Lcom/googlecode/mp4parser/authoring/Sample;->getSize()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v28

    move/from16 v0, v28

    new-array v6, v0, [B

    .line 133
    .local v6, "data":[B
    invoke-interface/range {v21 .. v21}, Lcom/googlecode/mp4parser/authoring/Sample;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {v8, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;->setData([B)V

    .line 135
    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setDecoderSpecificInfo(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;)V

    .line 136
    invoke-virtual {v9, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setDecoderConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;)V

    .line 137
    new-instance v22, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    invoke-direct/range {v22 .. v22}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;-><init>()V

    .line 138
    .local v22, "slConfigDescriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;
    const/16 v28, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->setPredefined(I)V

    .line 139
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setSlConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;)V

    .line 141
    new-instance v10, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    invoke-direct {v10}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;-><init>()V

    .line 142
    .local v10, "esds":Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    invoke-virtual {v10, v9}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setEsDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;)V

    .line 143
    invoke-virtual {v13, v10}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->vop_time_increment_resolution:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 147
    return-void

    .line 70
    .end local v6    # "data":[B
    .end local v7    # "decoderConfigDescriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    .end local v8    # "decoderSpecificInfo":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;
    .end local v9    # "esDescriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    .end local v10    # "esds":Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    .end local v21    # "s":Lcom/googlecode/mp4parser/authoring/Sample;
    .end local v22    # "slConfigDescriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 71
    .local v20, "origNal":Ljava/nio/ByteBuffer;
    invoke-static/range {v18 .. v18}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v23

    .line 72
    .local v23, "type":I
    const/16 v28, 0xb0

    move/from16 v0, v23

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 73
    const/16 v28, 0xb5

    move/from16 v0, v23

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 74
    if-eqz v23, :cond_2

    .line 75
    const/16 v28, 0x20

    move/from16 v0, v23

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 76
    const/16 v28, 0xb2

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 78
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->esdsComplete:Z

    move/from16 v28, v0

    if-nez v28, :cond_0

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->esdsStuff:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    const/16 v28, 0x20

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v13}, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->parse0x20Unit(Ljava/nio/ByteBuffer;ILcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;)V

    goto/16 :goto_0

    .line 83
    :cond_3
    const/16 v28, 0xb5

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 84
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->parse0x05Unit(Ljava/nio/ByteBuffer;)I

    move-result v26

    .line 87
    goto/16 :goto_0

    :cond_4
    const/16 v28, 0xb3

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 88
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->esdsComplete:Z

    .line 89
    new-instance v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 90
    .local v4, "bitReaderBuffer":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    const/16 v28, 0x12

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v24

    .line 91
    .local v24, "time_code":I
    and-int/lit8 v28, v24, 0x3f

    ushr-int/lit8 v29, v24, 0x7

    and-int/lit8 v29, v29, 0x3f

    mul-int/lit8 v29, v29, 0x3c

    add-int v28, v28, v29

    ushr-int/lit8 v29, v24, 0xd

    and-int/lit8 v29, v29, 0x1f

    mul-int/lit8 v29, v29, 0x3c

    mul-int/lit8 v29, v29, 0x3c

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-long v14, v0

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->stss:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->samples:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 94
    .end local v4    # "bitReaderBuffer":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    .end local v24    # "time_code":I
    :cond_5
    const/16 v28, 0xb6

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 95
    new-instance v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 96
    .local v5, "brb":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 97
    :goto_1
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v28

    if-nez v28, :cond_7

    .line 100
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    .line 101
    const/4 v11, 0x0

    .line 102
    .local v11, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->vop_time_increment_resolution:I

    move/from16 v28, v0

    const/16 v29, 0x1

    shl-int v29, v29, v11

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 105
    invoke-virtual {v5, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v27

    .line 106
    .local v27, "vop_time_increment":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->vop_time_increment_resolution:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    mul-long v28, v28, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->vop_time_increment_resolution:I

    move/from16 v30, v0

    rem-int v30, v27, v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v24, v28, v30

    .line 107
    .local v24, "time_code":J
    const-wide/16 v28, -0x1

    cmp-long v28, v16, v28

    if-eqz v28, :cond_6

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->decodingTimes:[J

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [J

    move-object/from16 v29, v0

    const/16 v30, 0x0

    sub-long v32, v24, v16

    aput-wide v32, v29, v30

    invoke-static/range {v28 .. v29}, Lcom/googlecode/mp4parser/util/Mp4Arrays;->copyOfAndAppend([J[J)[J

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->decodingTimes:[J

    .line 110
    :cond_6
    sget-object v28, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "Frame increment: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v30, v24, v16

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " vop time increment: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " last_sync_point: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " time_code: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    move-wide/from16 v16, v24

    .line 112
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->samples:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->createSampleObject(Ljava/util/List;)Lcom/googlecode/mp4parser/authoring/Sample;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 98
    .end local v11    # "i":I
    .end local v24    # "time_code":J
    .end local v27    # "vop_time_increment":I
    :cond_7
    const-wide/16 v28, 0x1

    add-long v14, v14, v28

    goto/16 :goto_1

    .line 103
    .restart local v11    # "i":I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 116
    .end local v5    # "brb":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    .end local v11    # "i":I
    :cond_9
    new-instance v28, Ljava/lang/RuntimeException;

    const-string/jumbo v29, "Got start code I don\'t know. Ask Sebastian via mp4parser mailing list what to do"

    invoke-direct/range {v28 .. v29}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v28
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    new-instance v2, Lcom/googlecode/mp4parser/FileDataSourceImpl;

    const-string/jumbo v6, "C:\\content\\bbb.h263"

    invoke-direct {v2, v6}, Lcom/googlecode/mp4parser/FileDataSourceImpl;-><init>(Ljava/lang/String;)V

    .line 401
    .local v2, "ds":Lcom/googlecode/mp4parser/DataSource;
    new-instance v4, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 402
    .local v4, "m":Lcom/googlecode/mp4parser/authoring/Movie;
    new-instance v5, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;

    invoke-direct {v5, v2}, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;-><init>(Lcom/googlecode/mp4parser/DataSource;)V

    .line 403
    .local v5, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-virtual {v4, v5}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    .line 404
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    .line 405
    .local v0, "builder":Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Container;

    move-result-object v1

    .line 406
    .local v1, "c":Lcom/coremedia/iso/boxes/Container;
    new-instance v3, Ljava/io/FileOutputStream;

    const-string/jumbo v6, "output.mp4"

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 407
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/coremedia/iso/boxes/Container;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    .line 409
    return-void
.end method

.method public static main1([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "C:\\dev\\mp4parser\\frames"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 389
    .local v2, "files":[Ljava/io/File;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 390
    new-instance v4, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 391
    .local v4, "m":Lcom/googlecode/mp4parser/authoring/Movie;
    new-instance v5, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;

    new-instance v6, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;

    invoke-direct {v6, v2}, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;-><init>([Ljava/io/File;)V

    invoke-direct {v5, v6}, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;-><init>(Lcom/googlecode/mp4parser/DataSource;)V

    .line 392
    .local v5, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-virtual {v4, v5}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    .line 393
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    .line 394
    .local v0, "builder":Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Container;

    move-result-object v1

    .line 395
    .local v1, "c":Lcom/coremedia/iso/boxes/Container;
    new-instance v3, Ljava/io/FileOutputStream;

    const-string/jumbo v6, "output.mp4"

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 396
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/coremedia/iso/boxes/Container;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    .line 397
    return-void
.end method

.method public static main2([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    new-instance v2, Lcom/coremedia/iso/IsoFile;

    const-string/jumbo v3, "C:\\content\\bbb.mp4"

    invoke-direct {v2, v3}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/moov[0]/trak[0]/mdia[0]/minf[0]/stbl[0]/stsd[0]/mp4v[0]/esds[0]"

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    .line 413
    .local v1, "esds":Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 414
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 415
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 416
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->getEsDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 417
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 418
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 419
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private parse0x05Unit(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "nal"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, "visual_object_verid":I
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 152
    .local v0, "brb":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v1

    .line 153
    .local v1, "is_visual_object_identifier":Z
    if-eqz v1, :cond_0

    .line 154
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    .line 155
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 157
    :cond_0
    return v2
.end method

.method private parse0x20Unit(Ljava/nio/ByteBuffer;ILcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;)V
    .locals 14
    .param p1, "nal"    # Ljava/nio/ByteBuffer;
    .param p2, "visual_object_verid"    # I
    .param p3, "mp4v"    # Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    .prologue
    .line 161
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 162
    .local v2, "brb":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    .line 163
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 164
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v5

    .line 165
    .local v5, "is_object_layer_identifier":Z
    move/from16 v9, p2

    .line 166
    .local v9, "video_object_layer_verid":I
    if-eqz v5, :cond_0

    .line 167
    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v9

    .line 168
    const/4 v12, 0x3

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 170
    :cond_0
    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    .line 179
    .local v1, "aspect_ratio_info":I
    const/16 v12, 0xf

    if-ne v1, v12, :cond_1

    .line 180
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 181
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 183
    :cond_1
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v11

    .line 184
    .local v11, "vol_control_parameters":Z
    if-eqz v11, :cond_2

    .line 185
    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 186
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    .line 187
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v6

    .line 188
    .local v6, "vbv_parameters":Z
    if-eqz v6, :cond_2

    .line 189
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Implemented when needed"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 204
    .end local v6    # "vbv_parameters":Z
    :cond_2
    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v8

    .line 211
    .local v8, "video_object_layer_shape":I
    iget v12, p0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->GRAYSCALE:I

    if-ne v8, v12, :cond_3

    .line 212
    const/4 v12, 0x1

    if-eq v9, v12, :cond_3

    .line 213
    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 215
    :cond_3
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    .line 216
    const/16 v12, 0x10

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v12

    iput v12, p0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->vop_time_increment_resolution:I

    .line 217
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    .line 218
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v3

    .line 219
    .local v3, "fixed_vop_rate":Z
    if-eqz v3, :cond_4

    .line 220
    sget-object v12, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->LOG:Ljava/util/logging/Logger;

    const-string/jumbo v13, "Fixed Frame Rate"

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 221
    const/4 v4, 0x0

    .line 222
    .local v4, "i":I
    :goto_0
    iget v12, p0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->vop_time_increment_resolution:I

    const/4 v13, 0x1

    shl-int/2addr v13, v4

    if-ge v12, v13, :cond_6

    .line 225
    invoke-virtual {v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v12

    iput v12, p0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->fixed_vop_time_increment:I

    .line 227
    .end local v4    # "i":I
    :cond_4
    iget v12, p0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->BINARY_ONLY:I

    if-eq v8, v12, :cond_7

    .line 228
    iget v12, p0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->RECTANGULAR:I

    if-ne v8, v12, :cond_5

    .line 229
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    .line 230
    const/16 v12, 0xd

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    .line 231
    .local v10, "video_object_layer_width":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 232
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    .line 233
    const/16 v12, 0xd

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    .line 234
    .local v7, "video_object_layer_height":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    .line 235
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    .line 362
    .end local v7    # "video_object_layer_height":I
    .end local v10    # "video_object_layer_width":I
    :cond_5
    return-void

    .line 223
    .restart local v4    # "i":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 360
    .end local v4    # "i":I
    :cond_7
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Please implmenet me"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
.end method


# virtual methods
.method protected createSampleObject(Ljava/util/List;)Lcom/googlecode/mp4parser/authoring/Sample;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcom/googlecode/mp4parser/authoring/Sample;"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "nals":Ljava/util/List;, "Ljava/util/List<+Ljava/nio/ByteBuffer;>;"
    const/4 v3, 0x3

    new-array v3, v3, [B

    const/4 v4, 0x2

    const/4 v5, 0x1

    aput-byte v5, v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 366
    .local v2, "startcode":Ljava/nio/ByteBuffer;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [Ljava/nio/ByteBuffer;

    .line 367
    .local v0, "data":[Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 371
    new-instance v3, Lcom/googlecode/mp4parser/authoring/SampleImpl;

    invoke-direct {v3, v0}, Lcom/googlecode/mp4parser/authoring/SampleImpl;-><init>([Ljava/nio/ByteBuffer;)V

    return-object v3

    .line 368
    :cond_0
    mul-int/lit8 v3, v1, 0x2

    aput-object v2, v0, v3

    .line 369
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    aput-object v3, v0, v4

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    const-string/jumbo v0, "vide"

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
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
    .line 384
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H263TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method
