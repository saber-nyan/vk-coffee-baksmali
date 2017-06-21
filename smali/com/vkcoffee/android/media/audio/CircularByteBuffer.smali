.class public Lcom/vkcoffee/android/media/audio/CircularByteBuffer;
.super Ljava/lang/Object;
.source "CircularByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;,
        Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x400

.field public static final INFINITE_SIZE:I = -0x1


# instance fields
.field protected blockingWrite:Z

.field protected buffer:[B

.field protected in:Ljava/io/InputStream;

.field protected volatile infinite:Z

.field protected inputStreamClosed:Z

.field protected volatile markPosition:I

.field protected volatile markSize:I

.field protected out:Ljava/io/OutputStream;

.field protected outputStreamClosed:Z

.field protected volatile readPosition:I

.field protected volatile writePosition:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 340
    const/16 v0, 0x400

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;-><init>(IZ)V

    .line 341
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 360
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;-><init>(IZ)V

    .line 361
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3
    .param p1, "size"    # I
    .param p2, "blockingWrite"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    .line 92
    iput v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    .line 98
    iput v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    .line 105
    iput v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markSize:I

    .line 111
    iput-boolean v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->infinite:Z

    .line 118
    iput-boolean v2, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->blockingWrite:Z

    .line 124
    new-instance v0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferInputStream;-><init>(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)V

    iput-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->in:Ljava/io/InputStream;

    .line 130
    iput-boolean v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->inputStreamClosed:Z

    .line 136
    new-instance v0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer$CircularByteBufferOutputStream;-><init>(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)V

    iput-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->out:Ljava/io/OutputStream;

    .line 142
    iput-boolean v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->outputStreamClosed:Z

    .line 395
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 396
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    .line 397
    iput-boolean v2, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->infinite:Z

    .line 402
    :goto_0
    iput-boolean p2, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->blockingWrite:Z

    .line 403
    return-void

    .line 399
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    .line 400
    iput-boolean v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->infinite:Z

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "blockingWrite"    # Z

    .prologue
    .line 373
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;-><init>(IZ)V

    .line 374
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->available()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->ensureMark()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->spaceLeft()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/media/audio/CircularByteBuffer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/CircularByteBuffer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->resize()V

    return-void
.end method

.method private available()I
    .locals 3

    .prologue
    .line 293
    iget v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    iget v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    if-gt v0, v1, :cond_0

    .line 297
    iget v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    iget v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    sub-int/2addr v0, v1

    .line 300
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    iget v2, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private ensureMark()V
    .locals 2

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->marked()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markSize:I

    if-le v0, v1, :cond_0

    .line 327
    iget v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    iput v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markSize:I

    .line 330
    :cond_0
    return-void
.end method

.method private marked()I
    .locals 3

    .prologue
    .line 309
    iget v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    iget v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    if-gt v0, v1, :cond_0

    .line 313
    iget v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    iget v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    sub-int/2addr v0, v1

    .line 316
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    iget v2, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private resize()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 250
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    new-array v5, v6, [B

    .line 251
    .local v5, "newBuffer":[B
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->marked()I

    move-result v4

    .line 252
    .local v4, "marked":I
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->available()I

    move-result v0

    .line 253
    .local v0, "available":I
    iget v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    iget v7, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    if-gt v6, v7, :cond_0

    .line 257
    iget v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    iget v7, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    sub-int v1, v6, v7

    .line 258
    .local v1, "length":I
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    iget v7, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    invoke-static {v6, v7, v5, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    .end local v1    # "length":I
    :goto_0
    iput-object v5, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    .line 266
    iput v8, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    .line 267
    iput v4, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    .line 268
    add-int v6, v4, v0

    iput v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    .line 269
    return-void

    .line 260
    :cond_0
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v6, v6

    iget v7, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    sub-int v2, v6, v7

    .line 261
    .local v2, "length1":I
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    iget v7, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    invoke-static {v6, v7, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    iget v3, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    .line 263
    .local v3, "length2":I
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    invoke-static {v6, v8, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private spaceLeft()I
    .locals 3

    .prologue
    .line 277
    iget v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    iget v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    if-ge v0, v1, :cond_0

    .line 281
    iget v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    iget v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    iget v2, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    .line 153
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->readPosition:I

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->writePosition:I

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->markPosition:I

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->outputStreamClosed:Z

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->inputStreamClosed:Z

    .line 158
    monitor-exit p0

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAvailable()I
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->available()I

    move-result v0

    monitor-exit p0

    return v0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->buffer:[B

    array-length v0, v0

    monitor-exit p0

    return v0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSpaceLeft()I
    .locals 1

    .prologue
    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/CircularByteBuffer;->spaceLeft()I

    move-result v0

    monitor-exit p0

    return v0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
