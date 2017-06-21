.class public Lnet/ypresto/androidtranscoder/MediaTranscoder;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;
    }
.end annotation


# static fields
.field private static final MAXIMUM_THREAD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaTranscoder"

.field private static volatile sMediaTranscoder:Lnet/ypresto/androidtranscoder/MediaTranscoder;


# instance fields
.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 9

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lnet/ypresto/androidtranscoder/MediaTranscoder$1;

    invoke-direct {v8, p0}, Lnet/ypresto/androidtranscoder/MediaTranscoder$1;-><init>(Lnet/ypresto/androidtranscoder/MediaTranscoder;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    return-void
.end method

.method public static getInstance()Lnet/ypresto/androidtranscoder/MediaTranscoder;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lnet/ypresto/androidtranscoder/MediaTranscoder;->sMediaTranscoder:Lnet/ypresto/androidtranscoder/MediaTranscoder;

    if-nez v0, :cond_1

    .line 58
    const-class v1, Lnet/ypresto/androidtranscoder/MediaTranscoder;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lnet/ypresto/androidtranscoder/MediaTranscoder;->sMediaTranscoder:Lnet/ypresto/androidtranscoder/MediaTranscoder;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lnet/ypresto/androidtranscoder/MediaTranscoder;

    invoke-direct {v0}, Lnet/ypresto/androidtranscoder/MediaTranscoder;-><init>()V

    sput-object v0, Lnet/ypresto/androidtranscoder/MediaTranscoder;->sMediaTranscoder:Lnet/ypresto/androidtranscoder/MediaTranscoder;

    .line 62
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    sget-object v0, Lnet/ypresto/androidtranscoder/MediaTranscoder;->sMediaTranscoder:Lnet/ypresto/androidtranscoder/MediaTranscoder;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "inFileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lnet/ypresto/androidtranscoder/MediaTranscoder$2;

    invoke-direct {v0, p0}, Lnet/ypresto/androidtranscoder/MediaTranscoder$2;-><init>(Lnet/ypresto/androidtranscoder/MediaTranscoder;)V

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/ypresto/androidtranscoder/MediaTranscoder;->transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
    .locals 11
    .param p1, "inFileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "outFormatStrategy"    # Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;
    .param p4, "listener"    # Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;",
            "Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    .line 163
    .local v9, "looper":Landroid/os/Looper;
    if-nez v9, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    .line 164
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 165
    .local v2, "handler":Landroid/os/Handler;
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 166
    .local v7, "futureReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Future<Ljava/lang/Void;>;>;"
    iget-object v10, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;-><init>(Lnet/ypresto/androidtranscoder/MediaTranscoder;Landroid/os/Handler;Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;Ljava/io/FileDescriptor;Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v10, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v8

    .line 218
    .local v8, "createdFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 219
    return-object v8
.end method

.method public transcodeVideo(Ljava/lang/String;Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
    .locals 8
    .param p1, "inPath"    # Ljava/lang/String;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "outFormatStrategy"    # Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;
    .param p4, "listener"    # Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;",
            "Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 105
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 117
    .local v5, "inFileDescriptor":Ljava/io/FileDescriptor;
    move-object v4, v3

    .line 118
    .local v4, "finalFileInputStream":Ljava/io/FileInputStream;
    new-instance v6, Lnet/ypresto/androidtranscoder/MediaTranscoder$3;

    invoke-direct {v6, p0, p4, v4}, Lnet/ypresto/androidtranscoder/MediaTranscoder$3;-><init>(Lnet/ypresto/androidtranscoder/MediaTranscoder;Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;Ljava/io/FileInputStream;)V

    invoke-virtual {p0, v5, p2, p3, v6}, Lnet/ypresto/androidtranscoder/MediaTranscoder;->transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;

    move-result-object v6

    return-object v6

    .line 107
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "finalFileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "inFileDescriptor":Ljava/io/FileDescriptor;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    if-eqz v2, :cond_0

    .line 110
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 115
    :cond_0
    :goto_1
    throw v0

    .line 111
    :catch_1
    move-exception v1

    .line 112
    .local v1, "eClose":Ljava/io/IOException;
    const-string/jumbo v6, "MediaTranscoder"

    const-string/jumbo v7, "Can\'t close input stream: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "eClose":Ljava/io/IOException;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_0
.end method
