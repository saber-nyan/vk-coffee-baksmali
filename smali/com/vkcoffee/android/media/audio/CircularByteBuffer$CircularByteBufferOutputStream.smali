.class public Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;
.super Ljava/io/OutputStream;
.source "CircularByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/media/audio/CircularByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CircularByteBufferOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    monitor-enter v1

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v0, v0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->outputStreamClosed:Z

    if-nez v0, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->flush()V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->outputStreamClosed:Z

    .line 676
    monitor-exit v1

    .line 677
    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    monitor-enter v1

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v0, v0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->outputStreamClosed:Z

    if-eqz v0, :cond_0

    .line 689
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "OutputStream has been closed; cannot flush a closed OutputStream."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 691
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v0, v0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->inputStreamClosed:Z

    if-eqz v0, :cond_1

    .line 692
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Buffer closed by inputStream; cannot flush."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    return-void
.end method

.method public write(I)V
    .locals 8
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 791
    const/4 v1, 0x0

    .line 792
    .local v1, "written":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 793
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    monitor-enter v4

    .line 794
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v3, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->outputStreamClosed:Z

    if-eqz v3, :cond_1

    .line 795
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v5, "OutputStream has been closed; cannot write to a closed OutputStream."

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 816
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 797
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v3, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->inputStreamClosed:Z

    if-eqz v3, :cond_2

    .line 798
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v5, "Buffer closed by InputStream; cannot write to a closed buffer."

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 800
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    invoke-static {v3}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->access$200(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)I

    move-result v0

    .line 801
    .local v0, "spaceLeft":I
    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v3, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->infinite:Z

    if-eqz v3, :cond_3

    if-ge v0, v7, :cond_3

    .line 802
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    invoke-static {v3}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->access$300(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)V

    .line 803
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    invoke-static {v3}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->access$200(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)I

    move-result v0

    goto :goto_1

    .line 805
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v3, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->blockingWrite:Z

    if-nez v3, :cond_4

    if-ge v0, v7, :cond_4

    .line 806
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v5, "CircularByteBuffer is full; cannot write 1 byte"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 808
    :cond_4
    if-lez v0, :cond_6

    .line 809
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v3, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v5, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    and-int/lit16 v6, p1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 810
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v5, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    .line 811
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v3, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v5, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v5, v5

    if-ne v3, v5, :cond_5

    .line 812
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    const/4 v5, 0x0

    iput v5, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    .line 814
    :cond_5
    const/4 v1, 0x1

    .line 816
    :cond_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 817
    if-nez v1, :cond_0

    .line 819
    const-wide/16 v4, 0x64

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 820
    :catch_0
    move-exception v2

    .line 821
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Waiting for available space in buffer interrupted."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 825
    .end local v0    # "spaceLeft":I
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_7
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "cbuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 712
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->write([BII)V

    .line 713
    return-void
.end method

.method public write([BII)V
    .locals 10
    .param p1, "cbuf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    :cond_0
    :goto_0
    if-lez p3, :cond_8

    .line 732
    iget-object v7, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    monitor-enter v7

    .line 733
    :try_start_0
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v6, v6, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->outputStreamClosed:Z

    if-eqz v6, :cond_1

    .line 734
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v8, "OutputStream has been closed; cannot write to a closed OutputStream."

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 765
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 736
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v6, v6, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->inputStreamClosed:Z

    if-eqz v6, :cond_2

    .line 737
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v8, "Buffer closed by InputStream; cannot write to a closed buffer."

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 739
    :cond_2
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    invoke-static {v6}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->access$200(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)I

    move-result v3

    .line 740
    .local v3, "spaceLeft":I
    :goto_1
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v6, v6, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->infinite:Z

    if-eqz v6, :cond_3

    if-ge v3, p3, :cond_3

    .line 741
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    invoke-static {v6}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->access$300(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)V

    .line 742
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    invoke-static {v6}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->access$200(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)I

    move-result v3

    goto :goto_1

    .line 744
    :cond_3
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v6, v6, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->blockingWrite:Z

    if-nez v6, :cond_4

    if-ge v3, p3, :cond_4

    .line 745
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CircularByteBuffer is full; cannot write "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 747
    :cond_4
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 748
    .local v1, "realLen":I
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v6, v6, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v6, v6

    iget-object v8, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v8, v8, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    sub-int/2addr v6, v8

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 749
    .local v0, "firstLen":I
    sub-int v6, v1, v0

    iget-object v8, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v8, v8, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v8, v8

    iget-object v9, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v9, v9, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 750
    .local v2, "secondLen":I
    add-int v4, v0, v2

    .line 751
    .local v4, "written":I
    if-lez v0, :cond_5

    .line 752
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v6, v6, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    iget-object v8, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v8, v8, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    invoke-static {p1, p2, v6, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    :cond_5
    if-lez v2, :cond_7

    .line 755
    add-int v6, p2, v0

    iget-object v8, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v8, v8, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    const/4 v9, 0x0

    invoke-static {p1, v6, v8, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 756
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iput v2, v6, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    .line 760
    :goto_2
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v6, v6, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    iget-object v8, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v8, v8, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v8, v8

    if-ne v6, v8, :cond_6

    .line 761
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    const/4 v8, 0x0

    iput v8, v6, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    .line 763
    :cond_6
    add-int/2addr p2, v4

    .line 764
    sub-int/2addr p3, v4

    .line 765
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    if-lez p3, :cond_0

    .line 768
    const-wide/16 v6, 0x64

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 769
    :catch_0
    move-exception v5

    .line 770
    .local v5, "x":Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Waiting for available space in buffer interrupted."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 758
    .end local v5    # "x":Ljava/lang/Exception;
    :cond_7
    :try_start_3
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v8, v6, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    add-int/2addr v8, v4

    iput v8, v6, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 774
    .end local v0    # "firstLen":I
    .end local v1    # "realLen":I
    .end local v2    # "secondLen":I
    .end local v3    # "spaceLeft":I
    .end local v4    # "written":I
    :cond_8
    return-void
.end method
