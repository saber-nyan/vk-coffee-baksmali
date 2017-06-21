.class public Lme/grishka/appkit/imageloader/ImageLoaderThreadPool;
.super Ljava/lang/Object;
.source "ImageLoaderThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;
    }
.end annotation


# static fields
.field private static final THREAD_COUNT:I = 0x4

.field private static cacheExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static canceler:Lme/grishka/appkit/utils/WorkerThread;

.field private static networkExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v0, 0x0

    const/4 v2, 0x4

    .line 17
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;

    invoke-direct {v8, v0}, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;-><init>(Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$1;)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool;->networkExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 18
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;

    invoke-direct {v8, v0}, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;-><init>(Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$1;)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool;->cacheExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    new-instance v0, Lme/grishka/appkit/utils/WorkerThread;

    const-string/jumbo v1, "ImageLoader canceler"

    invoke-direct {v0, v1}, Lme/grishka/appkit/utils/WorkerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool;->canceler:Lme/grishka/appkit/utils/WorkerThread;

    .line 23
    sget-object v0, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool;->canceler:Lme/grishka/appkit/utils/WorkerThread;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/WorkerThread;->start()V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static enqueueCachedTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 31
    sget-object v0, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool;->cacheExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method

.method static enqueueCancellation(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    sget-object v0, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool;->canceler:Lme/grishka/appkit/utils/WorkerThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lme/grishka/appkit/utils/WorkerThread;->postRunnable(Ljava/lang/Runnable;I)V

    .line 36
    return-void
.end method

.method static enqueueTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 27
    sget-object v0, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool;->networkExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 28
    return-void
.end method
