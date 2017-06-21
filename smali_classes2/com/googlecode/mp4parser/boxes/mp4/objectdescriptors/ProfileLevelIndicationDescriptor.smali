.class public Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;
.super Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
.source "ProfileLevelIndicationDescriptor.java"


# annotations
.annotation runtime Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/Descriptor;
    tags = {
        0x14
    }
.end annotation


# instance fields
.field profileLevelIndicationIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;-><init>()V

    .line 36
    const/16 v0, 0x14

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;->tag:I

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    if-ne p0, p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 73
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;

    .line 78
    .local v0, "that":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;->profileLevelIndicationIndex:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;->profileLevelIndicationIndex:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 79
    goto :goto_0
.end method

.method public getContentSize()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;->profileLevelIndicationIndex:I

    return v0
.end method

.method public parseDetail(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;->profileLevelIndicationIndex:I

    .line 42
    return-void
.end method

.method public serialize()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 47
    .local v0, "out":Ljava/nio/ByteBuffer;
    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 48
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;->getContentSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;->writeSize(Ljava/nio/ByteBuffer;I)V

    .line 49
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;->profileLevelIndicationIndex:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 50
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ProfileLevelIndicationDescriptor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v1, "{profileLevelIndicationIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;->profileLevelIndicationIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
