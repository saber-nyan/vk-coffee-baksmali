.class public Lcom/vkcoffee/android/engines/LongEngine;
.super Ljava/lang/Object;
.source "LongEngine.java"


# instance fields
.field private final mKeys:[J

.field private final mPayloadSize:I

.field private final mPayloads:[Ljava/lang/Object;

.field private final mPersistentStorage:Ljava/io/RandomAccessFile;

.field private final mRecordSize:J

.field private final mSize:I

.field private final mSortKeys:[J

.field private final mStorageLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/engines/LongEngine;-><init>(Ljava/lang/String;II)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "payloadSize"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/engines/LongEngine;->mStorageLock:Ljava/lang/Object;

    .line 38
    iput p2, p0, Lcom/vkcoffee/android/engines/LongEngine;->mSize:I

    .line 39
    iput p3, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPayloadSize:I

    .line 40
    iget v2, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPayloadSize:I

    add-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/vkcoffee/android/engines/LongEngine;->mRecordSize:J

    .line 42
    new-array v2, p2, [J

    iput-object v2, p0, Lcom/vkcoffee/android/engines/LongEngine;->mKeys:[J

    .line 43
    new-array v2, p2, [J

    iput-object v2, p0, Lcom/vkcoffee/android/engines/LongEngine;->mSortKeys:[J

    .line 44
    new-array v2, p2, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPayloads:[Ljava/lang/Object;

    .line 47
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 51
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPersistentStorage:Ljava/io/RandomAccessFile;

    .line 52
    invoke-direct {p0}, Lcom/vkcoffee/android/engines/LongEngine;->initPersistentStorage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-void

    .line 53
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/engines/LongEngine;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/engines/LongEngine;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkcoffee/android/engines/LongEngine;->mStorageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/engines/LongEngine;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkcoffee/android/engines/LongEngine;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/vkcoffee/android/engines/LongEngine;->mRecordSize:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/engines/LongEngine;)Ljava/io/RandomAccessFile;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/engines/LongEngine;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPersistentStorage:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/engines/LongEngine;)[J
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/engines/LongEngine;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkcoffee/android/engines/LongEngine;->mKeys:[J

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/engines/LongEngine;)[J
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/engines/LongEngine;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkcoffee/android/engines/LongEngine;->mSortKeys:[J

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/engines/LongEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/engines/LongEngine;

    .prologue
    .line 20
    iget v0, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPayloadSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/engines/LongEngine;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/engines/LongEngine;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPayloads:[Ljava/lang/Object;

    return-object v0
.end method

.method private initPersistentStorage()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v6, p0, Lcom/vkcoffee/android/engines/LongEngine;->mStorageLock:Ljava/lang/Object;

    monitor-enter v6

    .line 121
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPersistentStorage:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 122
    .local v0, "fileLen":J
    const-wide/16 v4, 0x0

    .line 123
    .local v4, "read":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/vkcoffee/android/engines/LongEngine;->mSize:I

    if-ge v2, v3, :cond_1

    cmp-long v3, v4, v0

    if-gez v3, :cond_1

    .line 124
    iget-object v3, p0, Lcom/vkcoffee/android/engines/LongEngine;->mKeys:[J

    iget-object v7, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPersistentStorage:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v8

    aput-wide v8, v3, v2

    .line 125
    iget-object v3, p0, Lcom/vkcoffee/android/engines/LongEngine;->mSortKeys:[J

    iget-object v7, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPersistentStorage:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v8

    aput-wide v8, v3, v2

    .line 127
    iget v3, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPayloadSize:I

    if-lez v3, :cond_0

    .line 128
    iget-object v7, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPersistentStorage:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPayloads:[Ljava/lang/Object;

    aget-object v3, v3, v2

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 123
    :cond_0
    add-int/lit8 v2, v2, 0x1

    iget-wide v8, p0, Lcom/vkcoffee/android/engines/LongEngine;->mRecordSize:J

    add-long/2addr v4, v8

    goto :goto_0

    .line 131
    :cond_1
    monitor-exit v6

    .line 132
    return-void

    .line 131
    .end local v0    # "fileLen":J
    .end local v2    # "i":I
    .end local v4    # "read":J
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static rank([JIIJ)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # J

    .prologue
    .line 158
    if-ge p2, p1, :cond_0

    .line 173
    .end local p1    # "start":I
    :goto_0
    return p1

    .line 162
    .restart local p1    # "start":I
    :cond_0
    sub-int v3, p2, p1

    shr-int/lit8 v3, v3, 0x1

    add-int v2, p1, v3

    .line 163
    .local v2, "mid":I
    array-length v3, p0

    if-ne v2, v3, :cond_1

    .line 164
    const/4 p1, -0x1

    goto :goto_0

    .line 166
    :cond_1
    aget-wide v0, p0, v2

    .line 168
    .local v0, "entry":J
    cmp-long v3, v0, p3

    if-lez v3, :cond_2

    .line 169
    add-int/lit8 v3, v2, 0x1

    invoke-static {p0, v3, p2, p3, p4}, Lcom/vkcoffee/android/engines/LongEngine;->rank([JIIJ)I

    move-result p1

    goto :goto_0

    .line 170
    :cond_2
    cmp-long v3, v0, p3

    if-gez v3, :cond_3

    .line 171
    add-int/lit8 v3, v2, -0x1

    invoke-static {p0, p1, v3, p3, p4}, Lcom/vkcoffee/android/engines/LongEngine;->rank([JIIJ)I

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v2

    .line 173
    goto :goto_0
.end method

.method private updatePersistentStorage(I)V
    .locals 1
    .param p1, "from"    # I

    .prologue
    .line 135
    new-instance v0, Lcom/vkcoffee/android/engines/LongEngine$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/engines/LongEngine$1;-><init>(Lcom/vkcoffee/android/engines/LongEngine;I)V

    .line 154
    invoke-virtual {v0}, Lcom/vkcoffee/android/engines/LongEngine$1;->start()V

    .line 155
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    .line 59
    iget-object v2, p0, Lcom/vkcoffee/android/engines/LongEngine;->mStorageLock:Ljava/lang/Object;

    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPersistentStorage:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 62
    iget-object v1, p0, Lcom/vkcoffee/android/engines/LongEngine;->mKeys:[J

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 63
    iget-object v1, p0, Lcom/vkcoffee/android/engines/LongEngine;->mSortKeys:[J

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 64
    iget-object v1, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPayloads:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    monitor-exit v2

    .line 69
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 68
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 3

    .prologue
    .line 110
    iget-object v2, p0, Lcom/vkcoffee/android/engines/LongEngine;->mStorageLock:Ljava/lang/Object;

    monitor-enter v2

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPersistentStorage:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :try_start_1
    monitor-exit v2

    .line 117
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 116
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public keys()[J
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/engines/LongEngine;->mKeys:[J

    return-object v0
.end method

.method public payload(J)[B
    .locals 5
    .param p1, "key"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 102
    iget-object v1, p0, Lcom/vkcoffee/android/engines/LongEngine;->mKeys:[J

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkcoffee/android/engines/LongEngine;->mKeys:[J

    array-length v3, v3

    invoke-static {v1, v2, v3, p1, p2}, Lcom/vkcoffee/android/engines/LongEngine;->rank([JIIJ)I

    move-result v0

    .line 103
    .local v0, "position":I
    iget-object v1, p0, Lcom/vkcoffee/android/engines/LongEngine;->mKeys:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPayloads:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, [B

    check-cast v1, [B

    .line 106
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put(IJ)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "sortKey"    # J

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vkcoffee/android/engines/LongEngine;->put(IJ[B)V

    .line 90
    return-void
.end method

.method public put(IJ[B)V
    .locals 6
    .param p1, "key"    # I
    .param p2, "sortKey"    # J
    .param p4, "payload"    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    iget-object v1, p0, Lcom/vkcoffee/android/engines/LongEngine;->mSortKeys:[J

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkcoffee/android/engines/LongEngine;->mSortKeys:[J

    array-length v3, v3

    invoke-static {v1, v2, v3, p2, p3}, Lcom/vkcoffee/android/engines/LongEngine;->rank([JIIJ)I

    move-result v0

    .line 73
    .local v0, "position":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/engines/LongEngine;->mKeys:[J

    iget-object v2, p0, Lcom/vkcoffee/android/engines/LongEngine;->mKeys:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/vkcoffee/android/engines/LongEngine;->mSize:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget-object v1, p0, Lcom/vkcoffee/android/engines/LongEngine;->mSortKeys:[J

    iget-object v2, p0, Lcom/vkcoffee/android/engines/LongEngine;->mSortKeys:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/vkcoffee/android/engines/LongEngine;->mSize:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v1, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPayloads:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPayloads:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/vkcoffee/android/engines/LongEngine;->mSize:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iget-object v1, p0, Lcom/vkcoffee/android/engines/LongEngine;->mKeys:[J

    int-to-long v2, p1

    aput-wide v2, v1, v0

    .line 82
    iget-object v1, p0, Lcom/vkcoffee/android/engines/LongEngine;->mSortKeys:[J

    aput-wide p2, v1, v0

    .line 83
    iget-object v1, p0, Lcom/vkcoffee/android/engines/LongEngine;->mPayloads:[Ljava/lang/Object;

    aput-object p4, v1, v0

    .line 85
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/engines/LongEngine;->updatePersistentStorage(I)V

    goto :goto_0
.end method

.method public sortKeys()[J
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/engines/LongEngine;->mSortKeys:[J

    return-object v0
.end method
