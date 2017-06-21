.class public Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;
.super Ljava/io/InputStream;
.source "CircularByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/media/audio/CircularByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CircularByteBufferInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    monitor-enter v1

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v0, v0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->inputStreamClosed:Z

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "InputStream has been closed, it is not ready."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 427
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    invoke-static {v0}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->access$000(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->inputStreamClosed:Z

    .line 443
    monitor-exit v1

    .line 444
    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public mark(I)V
    .locals 3
    .param p1, "readAheadLimit"    # I

    .prologue
    .line 460
    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    monitor-enter v1

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le v0, p1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iput p1, v0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markSize:I

    .line 464
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v2, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v2, v2, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    iput v2, v0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    .line 466
    :cond_0
    monitor-exit v1

    .line 467
    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    monitor-enter v4

    .line 494
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v3, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->inputStreamClosed:Z

    if-eqz v3, :cond_0

    .line 495
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v5, "InputStream has been closed; cannot read from a closed InputStream."

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 509
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 497
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    invoke-static {v3}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->access$000(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)I

    move-result v0

    .line 498
    .local v0, "available":I
    if-lez v0, :cond_2

    .line 499
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v3, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v5, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    aget-byte v3, v3, v5

    and-int/lit16 v1, v3, 0xff

    .line 500
    .local v1, "result":I
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v5, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    .line 501
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v3, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v5, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v5, v5

    if-ne v3, v5, :cond_1

    .line 502
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    const/4 v5, 0x0

    iput v5, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    .line 504
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    invoke-static {v3}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->access$100(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)V

    .line 505
    monitor-exit v4

    .line 507
    .end local v1    # "result":I
    :goto_1
    return v1

    .line 506
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v3, v3, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->outputStreamClosed:Z

    if-eqz v3, :cond_3

    .line 507
    const/4 v1, -0x1

    monitor-exit v4

    goto :goto_1

    .line 509
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    const-wide/16 v4, 0x64

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v2

    .line 513
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Blocking read operation interrupted."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public read([B)I
    .locals 2
    .param p1, "cbuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "cbuf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    :goto_0
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    monitor-enter v6

    .line 551
    :try_start_0
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v5, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->inputStreamClosed:Z

    if-eqz v5, :cond_0

    .line 552
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v7, "InputStream has been closed; cannot read from a closed InputStream."

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 574
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 554
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->access$000(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)I

    move-result v0

    .line 555
    .local v0, "available":I
    if-lez v0, :cond_3

    .line 556
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 557
    .local v2, "length":I
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v5, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v5, v5

    iget-object v7, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v7, v7, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    sub-int/2addr v5, v7

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 558
    .local v1, "firstLen":I
    sub-int v3, v2, v1

    .line 559
    .local v3, "secondLen":I
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v5, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    iget-object v7, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v7, v7, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    invoke-static {v5, v7, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 560
    if-lez v3, :cond_2

    .line 561
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v5, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    const/4 v7, 0x0

    add-int v8, p2, v1

    invoke-static {v5, v7, p1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iput v3, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    .line 566
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v5, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    iget-object v7, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v7, v7, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v7, v7

    if-ne v5, v7, :cond_1

    .line 567
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    const/4 v7, 0x0

    iput v7, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    .line 569
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->access$100(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)V

    .line 570
    monitor-exit v6

    .line 572
    .end local v1    # "firstLen":I
    .end local v2    # "length":I
    .end local v3    # "secondLen":I
    :goto_2
    return v2

    .line 564
    .restart local v1    # "firstLen":I
    .restart local v2    # "length":I
    .restart local v3    # "secondLen":I
    :cond_2
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v7, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    add-int/2addr v7, v2

    iput v7, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    goto :goto_1

    .line 571
    .end local v1    # "firstLen":I
    .end local v2    # "length":I
    .end local v3    # "secondLen":I
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v5, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->outputStreamClosed:Z

    if-eqz v5, :cond_4

    .line 572
    const/4 v2, -0x1

    monitor-exit v6

    goto :goto_2

    .line 574
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    const-wide/16 v6, 0x64

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 577
    :catch_0
    move-exception v4

    .line 578
    .local v4, "x":Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Blocking read operation interrupted."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    monitor-enter v1

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v0, v0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->inputStreamClosed:Z

    if-eqz v0, :cond_0

    .line 596
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "InputStream has been closed; cannot reset a closed InputStream."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 598
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v2, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v2, v2, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    iput v2, v0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    .line 599
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    return-void
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 616
    :goto_0
    iget-object v8, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    monitor-enter v8

    .line 617
    :try_start_0
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v5, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->inputStreamClosed:Z

    if-eqz v5, :cond_0

    .line 618
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "InputStream has been closed; cannot skip bytes on a closed InputStream."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 638
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 620
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->access$000(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)I

    move-result v0

    .line 621
    .local v0, "available":I
    if-lez v0, :cond_3

    .line 622
    long-to-int v5, p1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 623
    .local v2, "length":I
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v5, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v5, v5

    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v6, v6, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    sub-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 624
    .local v1, "firstLen":I
    sub-int v3, v2, v1

    .line 625
    .local v3, "secondLen":I
    if-lez v3, :cond_2

    .line 626
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iput v3, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    .line 630
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v5, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-object v6, v6, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v6, v6

    if-ne v5, v6, :cond_1

    .line 631
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    const/4 v6, 0x0

    iput v6, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    .line 633
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->access$100(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)V

    .line 634
    int-to-long v6, v2

    monitor-exit v8

    .line 636
    .end local v1    # "firstLen":I
    .end local v2    # "length":I
    .end local v3    # "secondLen":I
    :goto_2
    return-wide v6

    .line 628
    .restart local v1    # "firstLen":I
    .restart local v2    # "length":I
    .restart local v3    # "secondLen":I
    :cond_2
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget v6, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    add-int/2addr v6, v2

    iput v6, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    goto :goto_1

    .line 635
    .end local v1    # "firstLen":I
    .end local v2    # "length":I
    .end local v3    # "secondLen":I
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;->this$0:Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    iget-boolean v5, v5, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->outputStreamClosed:Z

    if-eqz v5, :cond_4

    .line 636
    const-wide/16 v6, 0x0

    monitor-exit v8

    goto :goto_2

    .line 638
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    const-wide/16 v6, 0x64

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v4

    .line 642
    .local v4, "x":Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Blocking read operation interrupted."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
