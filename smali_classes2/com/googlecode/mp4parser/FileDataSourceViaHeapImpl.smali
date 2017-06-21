.class public Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;
.super Ljava/lang/Object;
.source "FileDataSourceViaHeapImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/DataSource;


# static fields
.field private static LOG:Lcom/googlecode/mp4parser/util/Logger;


# instance fields
.field fc:Ljava/nio/channels/FileChannel;

.field filename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/Logger;->getLogger(Ljava/lang/Class;)Lcom/googlecode/mp4parser/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->fc:Ljava/nio/channels/FileChannel;

    .line 24
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->filename:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "f"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->fc:Ljava/nio/channels/FileChannel;

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->filename:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 1
    .param p1, "fc"    # Ljava/nio/channels/FileChannel;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->fc:Ljava/nio/channels/FileChannel;

    .line 36
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->filename:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;)V
    .locals 0
    .param p1, "fc"    # Ljava/nio/channels/FileChannel;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->fc:Ljava/nio/channels/FileChannel;

    .line 41
    iput-object p2, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->filename:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 72
    return-void
.end method

.method public declared-synchronized map(JJ)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "startPosition"    # J
    .param p3, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v0, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 65
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized position(J)V
    .locals 1
    .param p1, "nuPos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 7
    .param p1, "startPosition"    # J
    .param p3, "count"    # J
    .param p5, "sink"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;->fc:Ljava/nio/channels/FileChannel;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
