.class public Lcom/vkcoffee/android/media/audio/FileMediaBuffer;
.super Lcom/vkcoffee/android/media/audio/MediaBuffer;
.source "FileMediaBuffer.java"


# static fields
.field private static final MEM_BUFFER_SIZE:I = 0xa00000


# instance fields
.field private closed:Z

.field private dataFile:Ljava/io/File;

.field private downloadDone:Z

.field private file:Ljava/io/RandomAccessFile;

.field private fileSize:I

.field private loadedRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;",
            ">;"
        }
    .end annotation
.end field

.field private readFile:Ljava/io/RandomAccessFile;

.field private readOffset:I

.field private final threadLock:Ljava/lang/Object;

.field private wantedRange:Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

.field private writeOffset:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 8
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 35
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/MediaBuffer;-><init>()V

    .line 25
    iput v7, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readOffset:I

    .line 26
    iput v7, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->writeOffset:I

    .line 27
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    .line 28
    new-instance v6, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    invoke-direct {v6}, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;-><init>()V

    iput-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->wantedRange:Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .line 29
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->threadLock:Ljava/lang/Object;

    .line 30
    iput v7, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    .line 32
    iput-boolean v7, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->downloadDone:Z

    .line 33
    iput-boolean v7, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->closed:Z

    .line 36
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->dataFile:Ljava/io/File;

    .line 37
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".part"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "fp":Ljava/io/File;
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "rws"

    invoke-direct {v6, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->file:Ljava/io/RandomAccessFile;

    .line 39
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "r"

    invoke-direct {v6, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readFile:Ljava/io/RandomAccessFile;

    .line 40
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->dataFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".ranges"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v4, "partsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 43
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    .local v2, "in":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    .line 45
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 46
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 47
    new-instance v5, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    invoke-direct {v5}, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;-><init>()V

    .line 48
    .local v5, "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v5, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    .line 49
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v5, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    .line 50
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v5    # "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_0
    const-string/jumbo v6, "vk"

    const-string/jumbo v7, "Loaded ranges from file: "

    invoke-static {v6, v7}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->logRanges()V

    .line 54
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1    # "i":I
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v3    # "len":I
    :cond_1
    :goto_1
    return-void

    .line 55
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private static dbgRanges(Ljava/util/ArrayList;I)V
    .locals 9
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 310
    :goto_0
    return-void

    .line 292
    :cond_0
    div-int/lit8 v0, p1, 0x1e

    .line 293
    .local v0, "cs":I
    const-string/jumbo v5, ""

    .line 294
    .local v5, "s":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v6, 0x1e

    if-ge v2, v6, :cond_4

    .line 295
    mul-int v3, v0, v2

    .line 296
    .local v3, "l":I
    const/4 v1, 0x0

    .line 297
    .local v1, "f":Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .line 298
    .local v4, "rn":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    iget v7, v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    if-gt v7, v3, :cond_1

    iget v7, v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    if-lt v7, v3, :cond_1

    .line 299
    const/4 v1, 0x1

    .line 303
    .end local v4    # "rn":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_2
    if-eqz v1, :cond_3

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 294
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 306
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 309
    .end local v1    # "f":Z
    .end local v3    # "l":I
    :cond_4
    const-string/jumbo v7, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    iget v6, v6, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    iget v6, v6, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private joinOverlappingRanges()V
    .locals 8

    .prologue
    .line 222
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 223
    .local v5, "sz":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 224
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 225
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 226
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .line 227
    .local v4, "prev":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .line 228
    .local v3, "n":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    iget v6, v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    iget v7, v3, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    if-lt v6, v7, :cond_1

    .line 229
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 230
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 231
    new-instance v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    invoke-direct {v2}, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;-><init>()V

    .line 232
    .local v2, "merged":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    iget v6, v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    iput v6, v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    .line 233
    iget v6, v3, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    iput v6, v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    .line 234
    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v2    # "merged":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .end local v3    # "n":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .end local v4    # "prev":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    .restart local v3    # "n":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .restart local v4    # "prev":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    .end local v0    # "i":I
    .end local v3    # "n":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .end local v4    # "prev":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_2
    return-void
.end method


# virtual methods
.method public getFileSize()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    return v0
.end method

.method public getLoadedOffsetAfter(I)I
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 277
    const v0, 0x7fffffff

    .line 278
    .local v0, "l":I
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->threadLock:Ljava/lang/Object;

    monitor-enter v3

    .line 279
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .line 280
    .local v1, "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    iget v4, v1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    if-le v4, p1, :cond_0

    .line 281
    iget v4, v1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 284
    .end local v1    # "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_1
    monitor-exit v3

    .line 285
    return v0

    .line 284
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getMaxBufferedPosition()I
    .locals 5

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "max":I
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->threadLock:Ljava/lang/Object;

    monitor-enter v3

    .line 194
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .line 195
    .local v1, "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    iget v4, v1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 196
    goto :goto_0

    .line 197
    .end local v1    # "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_0
    monitor-exit v3

    .line 198
    return v0

    .line 197
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getNeededRanges()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;>;"
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 273
    :goto_0
    return-object v3

    .line 250
    :cond_0
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->threadLock:Ljava/lang/Object;

    monitor-enter v5

    .line 251
    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 252
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    iget v4, v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    if-eqz v4, :cond_1

    .line 253
    new-instance v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    invoke-direct {v2}, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;-><init>()V

    .line 254
    .local v2, "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    const/4 v4, 0x0

    iput v4, v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    .line 255
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    iget v4, v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    iput v4, v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    .line 256
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .end local v2    # "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    iget v1, v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    .line 259
    .local v1, "prev":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 260
    new-instance v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    invoke-direct {v2}, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;-><init>()V

    .line 261
    .restart local v2    # "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    iput v1, v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    .line 262
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    iget v4, v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    iput v4, v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    .line 263
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    iget v1, v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    .line 264
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    .end local v2    # "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    iget v4, v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    iget v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    if-eq v4, v6, :cond_3

    .line 267
    new-instance v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    invoke-direct {v2}, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;-><init>()V

    .line 268
    .restart local v2    # "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    iget v4, v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    iput v4, v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    .line 269
    iget v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    iput v4, v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    .line 270
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v2    # "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_3
    monitor-exit v5

    goto/16 :goto_0

    .end local v0    # "i":I
    .end local v1    # "prev":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getReadOffset()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readOffset:I

    return v0
.end method

.method public getWriteOffset()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->writeOffset:I

    return v0
.end method

.method public isEndOfStream()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 184
    iget v1, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    if-lez v1, :cond_0

    .line 185
    iget v1, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readOffset:I

    iget v2, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 187
    :cond_0
    return v0
.end method

.method public isFullyLoaded()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->downloadDone:Z

    return v0
.end method

.method public isOffsetDownloaded(I)Z
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "dl":Z
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->threadLock:Ljava/lang/Object;

    monitor-enter v3

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .line 206
    .local v1, "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    iget v4, v1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    if-gt v4, p1, :cond_0

    iget v4, v1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    if-lt v4, p1, :cond_0

    .line 207
    const/4 v0, 0x1

    .line 211
    .end local v1    # "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_1
    monitor-exit v3

    .line 212
    return v0

    .line 211
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public logRanges()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->dbgRanges(Ljava/util/ArrayList;I)V

    .line 314
    return-void
.end method

.method public read([BII)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readOffset:I

    .line 98
    .local v3, "start":I
    iget v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readOffset:I

    add-int v1, v4, p3

    .line 99
    .local v1, "end":I
    iget v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    if-le v1, v4, :cond_0

    .line 100
    new-instance v4, Ljava/io/EOFException;

    const-string/jumbo v5, "One doesn\'t simply read beyond the end of the file"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 103
    .local v0, "canReadRightNow":Z
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->threadLock:Ljava/lang/Object;

    monitor-enter v5

    .line 104
    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .line 105
    .local v2, "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    iget v6, v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    if-gt v6, v3, :cond_1

    iget v6, v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    if-lt v6, v1, :cond_1

    .line 106
    const/4 v0, 0x1

    .line 110
    .end local v2    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-nez v0, :cond_3

    .line 112
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->wantedRange:Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    iget v5, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readOffset:I

    iput v5, v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    .line 113
    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->wantedRange:Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    iget v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    iget v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readOffset:I

    add-int v7, v4, p3

    iget v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readOffset:I

    const/16 v8, 0x400

    if-ge v4, v8, :cond_4

    const/4 v4, 0x0

    :goto_0
    add-int/2addr v4, v7

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v5, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    .line 114
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Waiting for range "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->wantedRange:Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to be downloaded, size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    monitor-enter p0

    .line 117
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Wait done"

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_3
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readFile:Ljava/io/RandomAccessFile;

    iget v5, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readOffset:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 124
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 125
    iget v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readOffset:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readOffset:I

    .line 126
    return-void

    .line 110
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 113
    :cond_4
    const v4, 0x19000

    goto :goto_0

    .line 120
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 118
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public release(Z)V
    .locals 6
    .param p1, "deleteTempFiles"    # Z

    .prologue
    .line 151
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->closed:Z

    .line 152
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 153
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readFile:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 156
    :cond_0
    if-eqz p1, :cond_2

    .line 157
    iget-boolean v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->downloadDone:Z

    if-nez v3, :cond_1

    .line 158
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->dataFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 180
    :goto_0
    return-void

    .line 160
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->dataFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->dataFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0

    .line 178
    :catch_0
    move-exception v3

    goto :goto_0

    .line 163
    :cond_2
    iget-boolean v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->downloadDone:Z

    if-nez v3, :cond_4

    .line 164
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->dataFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".ranges"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "partsFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 166
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 167
    .local v0, "os":Ljava/io/DataOutputStream;
    iget v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 168
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 169
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .line 170
    .local v2, "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    iget v4, v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 171
    iget v4, v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    .line 173
    .end local v2    # "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_0

    .line 175
    .end local v0    # "os":Ljava/io/DataOutputStream;
    .end local v1    # "partsFile":Ljava/io/File;
    :cond_4
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->dataFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->dataFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public setFileSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 216
    iget v0, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    if-nez v0, :cond_0

    .line 217
    iput p1, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    .line 219
    :cond_0
    return-void
.end method

.method public setReadOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->readOffset:I

    .line 131
    return-void
.end method

.method public setWriteOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->writeOffset:I

    .line 141
    return-void
.end method

.method public write([BII)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->file:Ljava/io/RandomAccessFile;

    iget v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->writeOffset:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 64
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 65
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->threadLock:Ljava/lang/Object;

    monitor-enter v4

    .line 66
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v2, v1

    .end local v1    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .local v2, "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :goto_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .line 67
    .local v0, "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    iget v5, v0, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    iget v6, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->writeOffset:I

    if-ne v5, v6, :cond_4

    .line 68
    move-object v1, v0

    .end local v2    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .restart local v1    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :goto_1
    move-object v2, v1

    .line 70
    .end local v1    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .restart local v2    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    goto :goto_0

    .line 71
    .end local v0    # "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_0
    if-eqz v2, :cond_3

    .line 72
    iget v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->writeOffset:I

    add-int/2addr v3, p3

    iput v3, v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, v2

    .line 79
    .end local v2    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .restart local v1    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :goto_2
    :try_start_2
    iget v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->writeOffset:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->writeOffset:I

    .line 80
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->joinOverlappingRanges()V

    .line 82
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    iget v3, v3, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    iget v3, v3, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    iget v5, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->fileSize:I

    if-ne v3, v5, :cond_1

    .line 83
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->downloadDone:Z

    .line 85
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->wantedRange:Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->wantedRange:Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->contains(Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    monitor-enter p0

    .line 88
    :try_start_3
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->wantedRange:Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->wantedRange:Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    const/4 v5, -0x2

    iput v5, v4, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    iput v5, v3, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    :cond_2
    return-void

    .line 74
    .end local v1    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .restart local v2    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_3
    :try_start_4
    new-instance v1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    invoke-direct {v1}, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 75
    .end local v2    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .restart local v1    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :try_start_5
    iget v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->writeOffset:I

    iput v3, v1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    .line 76
    iget v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->writeOffset:I

    add-int/2addr v3, p3

    iput v3, v1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    .line 77
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->loadedRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 85
    :catchall_0
    move-exception v3

    :goto_3
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 90
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 85
    .end local v1    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .restart local v2    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .restart local v1    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    goto :goto_3

    .end local v1    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .restart local v0    # "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .restart local v2    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_4
    move-object v1, v2

    .end local v2    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .restart local v1    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    goto :goto_1
.end method
