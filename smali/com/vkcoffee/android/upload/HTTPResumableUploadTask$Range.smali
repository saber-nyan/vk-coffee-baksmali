.class Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
.super Ljava/lang/Object;
.source "HTTPResumableUploadTask.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;",
        ">;"
    }
.end annotation


# instance fields
.field private end:J

.field private lastUpdate:J

.field private length:J

.field private start:J

.field private total:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 5
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "total"    # J

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-wide p1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->start:J

    .line 348
    iput-wide p3, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->end:J

    .line 349
    sub-long v0, p3, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->length:J

    .line 350
    iput-wide p5, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->total:J

    .line 351
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->start:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->end:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->total:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->length:J

    return-wide v0
.end method

.method public static merge(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "intervals":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x2

    if-ge v1, v11, :cond_0

    .line 421
    .end local p0    # "intervals":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;>;"
    :goto_0
    return-object p0

    .line 401
    .restart local p0    # "intervals":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;>;"
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 403
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    .line 404
    .local v8, "first":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
    iget-wide v6, v8, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->total:J

    .line 405
    .local v6, "total":J
    iget-wide v2, v8, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->start:J

    .line 406
    .local v2, "start":J
    iget-wide v4, v8, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->end:J

    .line 408
    .local v4, "end":J
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;>;"
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 410
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    .line 411
    .local v0, "current":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
    iget-wide v12, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->start:J

    cmp-long v1, v12, v4

    if-gtz v1, :cond_1

    .line 412
    iget-wide v12, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->end:J

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 409
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 414
    :cond_1
    new-instance v1, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;-><init>(JJJ)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    iget-wide v2, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->start:J

    .line 416
    iget-wide v4, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->end:J

    goto :goto_2

    .line 420
    .end local v0    # "current":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
    :cond_2
    new-instance v1, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;-><init>(JJJ)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p0, v10

    .line 421
    goto :goto_0
.end method

.method private updateProgress(Lcom/vkcoffee/android/upload/UploadTask;JJ)V
    .locals 6
    .param p1, "task"    # Lcom/vkcoffee/android/upload/UploadTask;
    .param p2, "sent"    # J
    .param p4, "totalUploaded"    # J

    .prologue
    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->lastUpdate:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x96

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 386
    add-long v2, p4, p2

    long-to-float v1, v2

    iget-wide v2, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->total:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 387
    .local v0, "percentage":I
    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/vkcoffee/android/upload/UploadTask;->onProgress(IIZ)V

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->lastUpdate:J

    .line 390
    .end local v0    # "percentage":I
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)I
    .locals 4
    .param p1, "another"    # Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 394
    iget-wide v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->start:J

    iget-wide v2, p1, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->start:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 339
    check-cast p1, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->compareTo(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)I

    move-result v0

    return v0
.end method

.method public copy(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/vkcoffee/android/upload/UploadTask;)V
    .locals 11
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "totalUploaded"    # J
    .param p5, "task"    # Lcom/vkcoffee/android/upload/UploadTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    const/16 v0, 0x4000

    new-array v6, v0, [B

    .line 355
    .local v6, "buffer":[B
    const-wide/16 v2, 0x0

    .line 358
    .local v2, "sent":J
    iget-wide v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->total:J

    iget-wide v4, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->length:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 359
    :goto_0
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    if-lez v7, :cond_2

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p2, v6, v0, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 361
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 362
    int-to-long v0, v7

    add-long/2addr v2, v0

    move-object v0, p0

    move-object/from16 v1, p5

    move-wide v4, p3

    .line 363
    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->updateProgress(Lcom/vkcoffee/android/upload/UploadTask;JJ)V

    goto :goto_0

    .line 366
    .end local v7    # "read":I
    :cond_0
    iget-wide v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->start:J

    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 367
    iget-wide v8, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->length:J

    .line 369
    .local v8, "toRead":J
    :goto_1
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .restart local v7    # "read":I
    if-lez v7, :cond_2

    .line 370
    int-to-long v0, v7

    sub-long/2addr v8, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p2, v6, v0, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 372
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 378
    int-to-long v0, v7

    add-long/2addr v2, v0

    move-object v0, p0

    move-object/from16 v1, p5

    move-wide v4, p3

    .line 379
    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->updateProgress(Lcom/vkcoffee/android/upload/UploadTask;JJ)V

    goto :goto_1

    .line 374
    :cond_1
    const/4 v0, 0x0

    long-to-int v1, v8

    add-int/2addr v1, v7

    invoke-virtual {p2, v6, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 375
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 382
    .end local v8    # "toRead":J
    :cond_2
    return-void
.end method
