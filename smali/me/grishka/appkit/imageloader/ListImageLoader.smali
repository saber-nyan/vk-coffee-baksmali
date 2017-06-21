.class public Lme/grishka/appkit/imageloader/ListImageLoader;
.super Ljava/lang/Object;
.source "ListImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "appkit-img-loader"


# instance fields
.field private volatile adapter:Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

.field private incomplete:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;",
            ">;"
        }
    .end annotation
.end field

.field private isScrolling:Z

.field private loadedUrls:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mainThreadHandler:Landroid/os/Handler;

.field private pendingPartialCancel:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;",
            ">;"
        }
    .end annotation
.end field

.field private reusableTasks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;",
            ">;"
        }
    .end annotation
.end field

.field private final rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->incomplete:Ljava/util/Vector;

    .line 25
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->reusableTasks:Ljava/util/Vector;

    .line 26
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->loadedUrls:Landroid/support/v4/util/LongSparseArray;

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->mainThreadHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic access$200(Lme/grishka/appkit/imageloader/ListImageLoader;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoader;

    .prologue
    .line 16
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->reusableTasks:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$300(Lme/grishka/appkit/imageloader/ListImageLoader;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoader;

    .prologue
    .line 16
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$400(II)J
    .locals 2
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-static {p0, p1}, Lme/grishka/appkit/imageloader/ListImageLoader;->makeIndex(II)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lme/grishka/appkit/imageloader/ListImageLoader;)Landroid/support/v4/util/LongSparseArray;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoader;

    .prologue
    .line 16
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->loadedUrls:Landroid/support/v4/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lme/grishka/appkit/imageloader/ListImageLoader;)Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoader;

    .prologue
    .line 16
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->adapter:Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lme/grishka/appkit/imageloader/ListImageLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoader;

    .prologue
    .line 16
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->mainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lme/grishka/appkit/imageloader/ListImageLoader;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoader;

    .prologue
    .line 16
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->incomplete:Ljava/util/Vector;

    return-object v0
.end method

.method private createTask()Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->reusableTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 117
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->reusableTasks:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    .line 120
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;-><init>(Lme/grishka/appkit/imageloader/ListImageLoader;Lme/grishka/appkit/imageloader/ListImageLoader$1;)V

    goto :goto_0
.end method

.method private static getImage(J)I
    .locals 2
    .param p0, "index"    # J

    .prologue
    .line 218
    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static getPosition(J)I
    .locals 2
    .param p0, "index"    # J

    .prologue
    .line 214
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static makeIndex(II)J
    .locals 6
    .param p0, "position"    # I
    .param p1, "image"    # I

    .prologue
    .line 210
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized cancel(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 143
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    .line 145
    .local v1, "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    iget v2, v1, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->item:I

    if-ne v2, p1, :cond_0

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 148
    invoke-virtual {v1}, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;>;"
    .end local v1    # "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 151
    .restart local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized cancelAll()V
    .locals 3

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    .line 169
    .local v0, "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 167
    .end local v0    # "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 171
    :cond_0
    :try_start_1
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized cancelRange(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 155
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    .line 157
    .local v1, "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    iget v2, v1, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->item:I

    if-lt v2, p1, :cond_0

    iget v2, v1, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->item:I

    if-gt v2, p2, :cond_0

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 160
    invoke-virtual {v1}, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 154
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;>;"
    .end local v1    # "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 163
    .restart local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized commitPartialCancel()V
    .locals 4

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->pendingPartialCancel:Landroid/support/v4/util/LongSparseArray;

    if-nez v2, :cond_0

    .line 186
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "There\'s no pending partial cancellation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 187
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->pendingPartialCancel:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 188
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->pendingPartialCancel:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    .line 190
    .local v1, "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    invoke-virtual {v1}, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->cancel()V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->pendingPartialCancel:Landroid/support/v4/util/LongSparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    monitor-exit p0

    return-void
.end method

.method public getAdapter()Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->adapter:Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    return-object v0
.end method

.method public declared-synchronized isLoading(I)Z
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    .line 125
    .local v0, "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    iget v2, v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->item:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 126
    const/4 v1, 0x1

    .line 129
    .end local v0    # "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isLoading(II)Z
    .locals 3
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    .line 134
    .local v0, "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    iget v2, v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->item:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->image:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p2, :cond_0

    .line 135
    const/4 v1, 0x1

    .line 138
    .end local v0    # "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->isScrolling:Z

    return v0
.end method

.method public loadRange(IILandroid/content/Context;)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->adapter:Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    if-nez v2, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 48
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->adapter:Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    invoke-interface {v2}, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 50
    sub-int v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    :try_start_1
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    .local v1, "x":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "vk"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v1    # "x":Ljava/lang/Exception;
    :cond_2
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-gt v0, p2, :cond_0

    .line 52
    invoke-virtual {p0, v0, p3}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadSingleItem(ILandroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    .end local v0    # "i":I
    :catch_1
    move-exception v1

    .restart local v1    # "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized loadSingleItem(ILandroid/content/Context;)V
    .locals 10
    .param p1, "item"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->adapter:Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    invoke-interface {v6, p1}, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v0

    .line 60
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 61
    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->adapter:Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    invoke-interface {v6, p1, v1}, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->pendingPartialCancel:Landroid/support/v4/util/LongSparseArray;

    if-eqz v6, :cond_2

    .line 65
    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->pendingPartialCancel:Landroid/support/v4/util/LongSparseArray;

    invoke-static {p1, v1}, Lme/grishka/appkit/imageloader/ListImageLoader;->makeIndex(II)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    .line 66
    .local v3, "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    if-eqz v3, :cond_2

    iget-object v6, v3, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->url:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 67
    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->pendingPartialCancel:Landroid/support/v4/util/LongSparseArray;

    invoke-static {p1, v1}, Lme/grishka/appkit/imageloader/ListImageLoader;->makeIndex(II)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/util/LongSparseArray;->remove(J)V

    .line 68
    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 109
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    .end local v3    # "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    .end local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 112
    :cond_1
    monitor-exit p0

    return-void

    .line 74
    .restart local v0    # "cnt":I
    .restart local v1    # "i":I
    .restart local v5    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->loadedUrls:Landroid/support/v4/util/LongSparseArray;

    invoke-static {p1, v1}, Lme/grishka/appkit/imageloader/ListImageLoader;->makeIndex(II)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    .local v2, "oldUrl":Ljava/lang/String;
    :try_start_3
    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 80
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 81
    invoke-static {p2}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v6

    invoke-virtual {v6, v5}, Lme/grishka/appkit/imageloader/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 83
    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->adapter:Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    invoke-static {p2}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v8

    invoke-virtual {v8, v5}, Lme/grishka/appkit/imageloader/ImageCache;->getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-interface {v6, p1, v1, v8}, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 59
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    .end local v2    # "oldUrl":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 78
    .restart local v0    # "cnt":I
    .restart local v1    # "i":I
    .restart local v5    # "url":Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_4
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v6

    .line 86
    .restart local v2    # "oldUrl":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    :try_start_5
    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->loadedUrls:Landroid/support/v4/util/LongSparseArray;

    invoke-static {p1, v1}, Lme/grishka/appkit/imageloader/ListImageLoader;->makeIndex(II)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/util/LongSparseArray;->remove(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 90
    :try_start_6
    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 94
    :cond_4
    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ListImageLoader;->createTask()Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    move-result-object v4

    .line 95
    .local v4, "task":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    const/4 v6, 0x0

    iput-boolean v6, v4, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->canceled:Z

    .line 96
    iput p1, v4, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->item:I

    .line 97
    iput v1, v4, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->image:I

    .line 98
    iput-object v5, v4, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->url:Ljava/lang/String;

    .line 99
    iget-boolean v6, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->isScrolling:Z

    if-nez v6, :cond_5

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, v4, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->set:Z

    .line 100
    iput-object p2, v4, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->context:Landroid/content/Context;

    .line 102
    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v6, v4, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->context:Landroid/content/Context;

    invoke-static {v6}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v6

    iget-object v8, v4, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->url:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lme/grishka/appkit/imageloader/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 104
    invoke-static {v4}, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool;->enqueueCachedTask(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 90
    .end local v4    # "task":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    :catchall_2
    move-exception v6

    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v6

    .restart local v4    # "task":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    :cond_5
    move v6, v7

    .line 99
    goto :goto_2

    .line 106
    :cond_6
    invoke-static {v4}, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool;->enqueueTask(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method onCacheEntryRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 225
    :goto_0
    :try_start_0
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->loadedUrls:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 226
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->loadedUrls:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 227
    .local v2, "x":J
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->loadedUrls:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 232
    .end local v0    # "index":I
    .end local v2    # "x":J
    :catchall_0
    move-exception v1

    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1

    .restart local v0    # "index":I
    :cond_0
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 234
    return-void
.end method

.method public declared-synchronized preparePartialCancel()V
    .locals 6

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->pendingPartialCancel:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_0

    .line 176
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "There\'s already a pending partial cancellation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 177
    :cond_0
    :try_start_1
    new-instance v1, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v1}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->pendingPartialCancel:Landroid/support/v4/util/LongSparseArray;

    .line 178
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    .line 179
    .local v0, "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->pendingPartialCancel:Landroid/support/v4/util/LongSparseArray;

    iget v3, v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->item:I

    iget v4, v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->image:I

    invoke-static {v3, v4}, Lme/grishka/appkit/imageloader/ListImageLoader;->makeIndex(II)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 181
    .end local v0    # "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    :cond_1
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    monitor-exit p0

    return-void
.end method

.method public setAdapter(Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;)V
    .locals 0
    .param p1, "a"    # Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    .prologue
    .line 36
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->adapter:Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    .line 37
    invoke-virtual {p0}, Lme/grishka/appkit/imageloader/ListImageLoader;->cancelAll()V

    .line 38
    return-void
.end method

.method public declared-synchronized setIsScrolling(Z)V
    .locals 3
    .param p1, "s"    # Z

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->isScrolling:Z

    .line 200
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    .line 201
    .local v0, "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->setDecode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    .end local v0    # "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 201
    .restart local v0    # "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 203
    .end local v0    # "t":Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
    :cond_1
    monitor-exit p0

    return-void
.end method
