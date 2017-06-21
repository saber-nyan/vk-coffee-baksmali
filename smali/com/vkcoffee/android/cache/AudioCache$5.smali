.class final Lcom/vkcoffee/android/cache/AudioCache$5;
.super Ljava/lang/Object;
.source "AudioCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/cache/AudioCache;->downloadParts(Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ri:Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/vkcoffee/android/cache/AudioCache$5;->val$ri:Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 550
    const/4 v10, 0x0

    .line 551
    .local v10, "retries":I
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->access$300()Ljava/util/Vector;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    if-lez v14, :cond_1

    .line 552
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->access$300()Ljava/util/Vector;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 554
    .local v6, "info":Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
    :try_start_1
    new-instance v12, Ljava/net/URL;

    iget-object v14, v6, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->url:Ljava/lang/String;

    invoke-direct {v12, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 555
    .local v12, "url":Ljava/net/URL;
    :goto_1
    iget-object v14, v6, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_3

    .line 556
    iget-object v14, v6, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    .line 557
    .local v8, "r":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    const-string/jumbo v14, "vk"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Downloading: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v8, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v8, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v4

    .line 559
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 560
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 562
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v6, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->oid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v6, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->aid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v4, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 564
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 565
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const-string/jumbo v14, "Range"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "bytes="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v8, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v8, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 567
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 568
    .local v11, "sin":Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v14, 0x1

    invoke-direct {v7, v5, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 569
    .local v7, "os":Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    iget v15, v8, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 572
    const/4 v9, 0x0

    .line 573
    .local v9, "read":I
    const/16 v14, 0x2800

    new-array v2, v14, [B

    .line 574
    .local v2, "buf":[B
    :goto_2
    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_2

    .line 575
    const/4 v14, 0x0

    invoke-virtual {v7, v2, v14, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 576
    iget v14, v8, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    add-int/2addr v14, v9

    iput v14, v8, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 585
    .end local v2    # "buf":[B
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "dir":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .end local v8    # "r":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .end local v9    # "read":I
    .end local v11    # "sin":Ljava/io/InputStream;
    .end local v12    # "url":Ljava/net/URL;
    :catch_0
    move-exception v13

    .line 586
    .local v13, "x":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v14, "vk"

    const-string/jumbo v15, "IOException, retrying..."

    invoke-static {v14, v15}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 588
    add-int/lit8 v10, v10, 0x1

    .line 589
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->access$300()Ljava/util/Vector;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 592
    .end local v6    # "info":Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
    .end local v13    # "x":Ljava/io/IOException;
    :catch_1
    move-exception v13

    .line 593
    .local v13, "x":Ljava/lang/Exception;
    const-string/jumbo v14, "vk"

    const-string/jumbo v15, "error downloading"

    invoke-static {v14, v15, v13}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/cache/AudioCache$5;->val$ri:Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;

    iget v14, v14, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->oid:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/cache/AudioCache$5;->val$ri:Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;

    iget v15, v15, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->aid:I

    invoke-static {v14, v15}, Lcom/vkcoffee/android/cache/AudioCache;->access$400(II)V

    .line 596
    .end local v13    # "x":Ljava/lang/Exception;
    :cond_1
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/vkcoffee/android/cache/AudioCache;->access$502(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 597
    return-void

    .line 578
    .restart local v2    # "buf":[B
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "info":Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "r":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .restart local v9    # "read":I
    .restart local v11    # "sin":Ljava/io/InputStream;
    .restart local v12    # "url":Ljava/net/URL;
    :cond_2
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 579
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 580
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 581
    iget-object v14, v6, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 582
    const-string/jumbo v14, "vk"

    const-string/jumbo v15, "Done!"

    invoke-static {v14, v15}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 584
    .end local v2    # "buf":[B
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "dir":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .end local v8    # "r":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .end local v9    # "read":I
    .end local v11    # "sin":Ljava/io/InputStream;
    :cond_3
    const/4 v14, 0x1

    iget-object v15, v6, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->file:Lcom/vkcoffee/android/AudioFile;

    invoke-static {v14, v15}, Lcom/vkcoffee/android/cache/AudioCache;->saveFile(ZLcom/vkcoffee/android/AudioFile;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method
