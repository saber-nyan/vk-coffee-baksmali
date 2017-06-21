.class public Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
.super Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
.source "DecoderConfigDescriptor.java"


# annotations
.annotation runtime Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/Descriptor;
    tags = {
        0x4
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

.field avgBitRate:J

.field bufferSizeDB:I

.field configDescriptorDeadBytes:[B

.field decoderSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

.field maxBitRate:J

.field objectTypeIndication:I

.field profileLevelIndicationDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field streamType:I

.field upStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->profileLevelIndicationDescriptors:Ljava/util/List;

    .line 59
    const/4 v0, 0x4

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->tag:I

    .line 60
    return-void
.end method


# virtual methods
.method public getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    return-object v0
.end method

.method public getAvgBitRate()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->avgBitRate:J

    return-wide v0
.end method

.method public getBufferSizeDB()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->bufferSizeDB:I

    return v0
.end method

.method getContentSize()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 102
    .line 103
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    if-nez v2, :cond_0

    move v2, v3

    .line 102
    :goto_0
    add-int/lit8 v2, v2, 0xd

    .line 104
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->decoderSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    if-nez v4, :cond_1

    .line 102
    :goto_1
    add-int v0, v2, v3

    .line 105
    .local v0, "out":I
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->profileLevelIndicationDescriptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 108
    return v0

    .line 103
    .end local v0    # "out":I
    :cond_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getSize()I

    move-result v2

    goto :goto_0

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->decoderSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;->getSize()I

    move-result v3

    goto :goto_1

    .line 105
    .restart local v0    # "out":I
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;

    .line 106
    .local v1, "profileLevelIndicationDescriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;->getSize()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_2
.end method

.method public getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->decoderSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    return-object v0
.end method

.method public getMaxBitRate()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->maxBitRate:J

    return-wide v0
.end method

.method public getObjectTypeIndication()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->objectTypeIndication:I

    return v0
.end method

.method public getProfileLevelIndicationDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->profileLevelIndicationDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->streamType:I

    return v0
.end method

.method public getUpStream()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->upStream:I

    return v0
.end method

.method public parseDetail(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v5

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->objectTypeIndication:I

    .line 66
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 67
    .local v1, "data":I
    ushr-int/lit8 v5, v1, 0x2

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->streamType:I

    .line 68
    shr-int/lit8 v5, v1, 0x1

    and-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->upStream:I

    .line 70
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt24(Ljava/nio/ByteBuffer;)I

    move-result v5

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->bufferSizeDB:I

    .line 71
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->maxBitRate:J

    .line 72
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->avgBitRate:J

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_1

    .line 99
    return-void

    .line 77
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 78
    .local v0, "begin":I
    iget v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->objectTypeIndication:I

    invoke-static {v5, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->createFrom(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object v2

    .line 79
    .local v2, "descriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int v3, v5, v0

    .line 80
    .local v3, "read":I
    sget-object v6, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " - DecoderConfigDescr1 read: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->getSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 81
    if-eqz v2, :cond_2

    .line 82
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->getSize()I

    move-result v4

    .line 83
    .local v4, "size":I
    if-ge v3, v4, :cond_2

    .line 85
    sub-int v5, v4, v3

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->configDescriptorDeadBytes:[B

    .line 86
    iget-object v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->configDescriptorDeadBytes:[B

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 89
    .end local v4    # "size":I
    :cond_2
    instance-of v5, v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    if-eqz v5, :cond_4

    .line 90
    check-cast v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    .end local v2    # "descriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
    iput-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->decoderSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    goto :goto_0

    .line 80
    .restart local v2    # "descriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 91
    :cond_4
    instance-of v5, v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    if-eqz v5, :cond_5

    .line 92
    check-cast v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    .end local v2    # "descriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
    iput-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    goto :goto_0

    .line 93
    .restart local v2    # "descriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
    :cond_5
    instance-of v5, v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;

    if-eqz v5, :cond_0

    .line 94
    iget-object v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->profileLevelIndicationDescriptors:Ljava/util/List;

    check-cast v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;

    .end local v2    # "descriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public serialize()Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getSize()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 113
    .local v2, "out":Ljava/nio/ByteBuffer;
    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->tag:I

    invoke-static {v2, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 114
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getContentSize()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->writeSize(Ljava/nio/ByteBuffer;I)V

    .line 115
    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->objectTypeIndication:I

    invoke-static {v2, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 116
    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->streamType:I

    shl-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->upStream:I

    shl-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    or-int/lit8 v1, v4, 0x1

    .line 117
    .local v1, "flags":I
    invoke-static {v2, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 118
    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->bufferSizeDB:I

    invoke-static {v2, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt24(Ljava/nio/ByteBuffer;I)V

    .line 119
    iget-wide v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->maxBitRate:J

    invoke-static {v2, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 120
    iget-wide v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->avgBitRate:J

    invoke-static {v2, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 121
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->decoderSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    if-eqz v4, :cond_0

    .line 122
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->decoderSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 123
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 125
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    if-eqz v4, :cond_1

    .line 126
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 127
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 129
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->profileLevelIndicationDescriptors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 132
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    return-object v4

    .line 129
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;

    .line 130
    .local v3, "profileLevelIndicationDescriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public setAudioSpecificInfo(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;)V
    .locals 0
    .param p1, "audioSpecificInfo"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    .line 149
    return-void
.end method

.method public setAvgBitRate(J)V
    .locals 1
    .param p1, "avgBitRate"    # J

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->avgBitRate:J

    .line 201
    return-void
.end method

.method public setBufferSizeDB(I)V
    .locals 0
    .param p1, "bufferSizeDB"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->bufferSizeDB:I

    .line 185
    return-void
.end method

.method public setDecoderSpecificInfo(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;)V
    .locals 0
    .param p1, "decoderSpecificInfo"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->decoderSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    .line 141
    return-void
.end method

.method public setMaxBitRate(J)V
    .locals 1
    .param p1, "maxBitRate"    # J

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->maxBitRate:J

    .line 193
    return-void
.end method

.method public setObjectTypeIndication(I)V
    .locals 0
    .param p1, "objectTypeIndication"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->objectTypeIndication:I

    .line 161
    return-void
.end method

.method public setStreamType(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->streamType:I

    .line 169
    return-void
.end method

.method public setUpStream(I)V
    .locals 0
    .param p1, "upStream"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->upStream:I

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "DecoderConfigDescriptor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string/jumbo v1, "{objectTypeIndication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->objectTypeIndication:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    const-string/jumbo v1, ", streamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->streamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    const-string/jumbo v1, ", upStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->upStream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string/jumbo v1, ", bufferSizeDB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->bufferSizeDB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    const-string/jumbo v1, ", maxBitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->maxBitRate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 212
    const-string/jumbo v1, ", avgBitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->avgBitRate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 213
    const-string/jumbo v1, ", decoderSpecificInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->decoderSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    const-string/jumbo v1, ", audioSpecificInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    const-string/jumbo v1, ", configDescriptorDeadBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->configDescriptorDeadBytes:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->configDescriptorDeadBytes:[B

    :goto_0
    invoke-static {v1}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string/jumbo v1, ", profileLevelIndicationDescriptors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->profileLevelIndicationDescriptors:Ljava/util/List;

    if-nez v1, :cond_1

    const-string/jumbo v1, "null"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 215
    :cond_0
    new-array v1, v4, [B

    goto :goto_0

    .line 216
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->profileLevelIndicationDescriptors:Ljava/util/List;

    aput-object v3, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
