.class Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;
.super Ljava/lang/Object;
.source "DefaultMp4SampleList.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/Sample;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SampleImpl"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 176
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->this$0:Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->index:I

    .line 178
    return-void
.end method


# virtual methods
.method public declared-synchronized asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 20

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->this$0:Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->index:I

    invoke-virtual {v13, v14}, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->getChunkForSample(I)I

    move-result v5

    .line 192
    .local v5, "chunkNumber":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->this$0:Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;

    iget-object v13, v13, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->cache:[Ljava/lang/ref/SoftReference;

    aget-object v4, v13, v5

    .line 194
    .local v4, "chunkBufferSr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->this$0:Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;

    iget-object v13, v13, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    aget v13, v13, v5

    add-int/lit8 v6, v13, -0x1

    .line 196
    .local v6, "chunkStartSample":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->index:I

    sub-int v10, v13, v6

    .line 197
    .local v10, "sampleInChunk":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->this$0:Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;

    iget-object v13, v13, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->sampleOffsetsWithinChunks:[[J

    int-to-long v14, v5

    invoke-static {v14, v15}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v14

    aget-object v11, v13, v14

    .line 198
    .local v11, "sampleOffsetsWithinChunk":[J
    aget-wide v8, v11, v10

    .line 201
    .local v8, "offsetWithInChunk":J
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "chunkBuffer":Ljava/nio/ByteBuffer;
    if-nez v3, :cond_1

    .line 204
    .end local v3    # "chunkBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->this$0:Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;

    iget-object v13, v13, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->topLevel:Lcom/coremedia/iso/boxes/Container;

    .line 205
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->this$0:Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;

    iget-object v14, v14, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkOffsets:[J

    int-to-long v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v15

    aget-wide v14, v14, v15

    .line 206
    array-length v0, v11

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget-wide v16, v11, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->this$0:Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-object/from16 v18, v0

    array-length v0, v11

    move/from16 v19, v0

    add-int v19, v19, v6

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizeAtIndex(I)J

    move-result-wide v18

    add-long v16, v16, v18

    .line 204
    invoke-interface/range {v13 .. v17}, Lcom/coremedia/iso/boxes/Container;->getByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 208
    .restart local v3    # "chunkBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->this$0:Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;

    iget-object v13, v13, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->cache:[Ljava/lang/ref/SoftReference;

    new-instance v14, Ljava/lang/ref/SoftReference;

    invoke-direct {v14, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v14, v13, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-static {v8, v9}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->this$0:Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;

    iget-object v14, v14, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->index:I

    invoke-virtual {v14, v15}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizeAtIndex(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    .local v2, "b":Ljava/nio/ByteBuffer;
    monitor-exit p0

    return-object v2

    .line 209
    .end local v2    # "b":Ljava/nio/ByteBuffer;
    .end local v3    # "chunkBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v7

    .line 210
    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 211
    .local v12, "sw":Ljava/io/StringWriter;
    new-instance v13, Ljava/io/PrintWriter;

    invoke-direct {v13, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v7, v13}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 212
    invoke-static {}, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->access$1()Lcom/googlecode/mp4parser/util/Logger;

    move-result-object v13

    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 213
    new-instance v13, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    .end local v4    # "chunkBufferSr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    .end local v5    # "chunkNumber":I
    .end local v6    # "chunkStartSample":I
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "offsetWithInChunk":J
    .end local v10    # "sampleInChunk":I
    .end local v11    # "sampleOffsetsWithinChunk":[J
    .end local v12    # "sw":Ljava/io/StringWriter;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->this$0:Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->index:I

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizeAtIndex(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Sample(index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->this$0:Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;

    iget-object v1, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->index:I

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizeAtIndex(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 182
    return-void
.end method
