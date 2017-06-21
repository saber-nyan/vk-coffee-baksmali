.class public abstract Lcom/vkcoffee/android/background/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;,
        Lcom/vkcoffee/android/background/AsyncTask$Handler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final sHandler:Lcom/vkcoffee/android/background/AsyncTask$Handler;

.field public static final sPool:Ljava/util/concurrent/Executor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLock:Ljava/lang/Object;

.field private mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/vkcoffee/android/background/AsyncTask;->CPU_COUNT:I

    .line 28
    sget v0, Lcom/vkcoffee/android/background/AsyncTask;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vkcoffee/android/background/AsyncTask;->CORE_POOL_SIZE:I

    .line 29
    sget v0, Lcom/vkcoffee/android/background/AsyncTask;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vkcoffee/android/background/AsyncTask;->MAXIMUM_POOL_SIZE:I

    .line 32
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/vkcoffee/android/background/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 34
    new-instance v0, Lcom/vkcoffee/android/background/AsyncTask$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/background/AsyncTask$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/background/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 42
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/vkcoffee/android/background/AsyncTask;->CORE_POOL_SIZE:I

    sget v3, Lcom/vkcoffee/android/background/AsyncTask;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/vkcoffee/android/background/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/vkcoffee/android/background/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/vkcoffee/android/background/AsyncTask;->sPool:Ljava/util/concurrent/Executor;

    .line 43
    new-instance v0, Lcom/vkcoffee/android/background/AsyncTask$Handler;

    invoke-direct {v0}, Lcom/vkcoffee/android/background/AsyncTask$Handler;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/background/AsyncTask;->sHandler:Lcom/vkcoffee/android/background/AsyncTask$Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/background/AsyncTask;, "Lcom/vkcoffee/android/background/AsyncTask<TParams;TProgress;TResult;>;"
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/background/AsyncTask;->mLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vkcoffee/android/background/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vkcoffee/android/background/AsyncTask;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/background/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/background/AsyncTask;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/background/AsyncTask;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 120
    .local p0, "this":Lcom/vkcoffee/android/background/AsyncTask;, "Lcom/vkcoffee/android/background/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/background/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    return-void
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public varargs execInCurrThread([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/vkcoffee/android/background/AsyncTask;, "Lcom/vkcoffee/android/background/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v2, p0, Lcom/vkcoffee/android/background/AsyncTask;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 162
    iget-object v3, p0, Lcom/vkcoffee/android/background/AsyncTask;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 163
    :try_start_0
    new-instance v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;-><init>(Lcom/vkcoffee/android/background/AsyncTask;)V

    .line 164
    .local v0, "result":Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;, "Lcom/vkcoffee/android/background/AsyncTask$AsyncResult<TProgress;TResult;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/background/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    .line 165
    sget-object v2, Lcom/vkcoffee/android/background/AsyncTask;->sHandler:Lcom/vkcoffee/android/background/AsyncTask$Handler;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/background/AsyncTask$Handler;->dispatchPreExecute(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;)V

    .line 166
    iget-object v2, p0, Lcom/vkcoffee/android/background/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 168
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/background/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->result:Ljava/lang/Object;

    .line 169
    iget-object v2, p0, Lcom/vkcoffee/android/background/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    sget-object v2, Lcom/vkcoffee/android/background/AsyncTask;->sHandler:Lcom/vkcoffee/android/background/AsyncTask$Handler;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/background/AsyncTask$Handler;->dispatchPostExecute(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    return-void

    .line 172
    :cond_0
    :try_start_3
    sget-object v2, Lcom/vkcoffee/android/background/AsyncTask;->sHandler:Lcom/vkcoffee/android/background/AsyncTask$Handler;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/background/AsyncTask$Handler;->dispatchCancel(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "throwable":Ljava/lang/Throwable;
    :try_start_4
    iget-object v2, p0, Lcom/vkcoffee/android/background/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    iput-object v1, v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->t:Ljava/lang/Throwable;

    .line 177
    sget-object v2, Lcom/vkcoffee/android/background/AsyncTask;->sHandler:Lcom/vkcoffee/android/background/AsyncTask$Handler;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/background/AsyncTask$Handler;->dispatchError(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;)V

    goto :goto_0

    .line 188
    .end local v0    # "result":Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;, "Lcom/vkcoffee/android/background/AsyncTask$AsyncResult<TProgress;TResult;>;"
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 179
    .restart local v0    # "result":Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;, "Lcom/vkcoffee/android/background/AsyncTask$AsyncResult<TProgress;TResult;>;"
    .restart local v1    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :try_start_5
    sget-object v2, Lcom/vkcoffee/android/background/AsyncTask;->sHandler:Lcom/vkcoffee/android/background/AsyncTask$Handler;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/background/AsyncTask$Handler;->dispatchCancel(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;)V

    goto :goto_0

    .line 183
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_2
    sget-object v2, Lcom/vkcoffee/android/background/AsyncTask;->sHandler:Lcom/vkcoffee/android/background/AsyncTask$Handler;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/background/AsyncTask$Handler;->dispatchCancel(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;)V

    goto :goto_0

    .line 186
    :cond_3
    sget-object v2, Lcom/vkcoffee/android/background/AsyncTask;->sHandler:Lcom/vkcoffee/android/background/AsyncTask$Handler;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/background/AsyncTask$Handler;->dispatchCancel(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public varargs execPool([Ljava/lang/Object;)Lcom/vkcoffee/android/background/AsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/vkcoffee/android/background/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/vkcoffee/android/background/AsyncTask;, "Lcom/vkcoffee/android/background/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/vkcoffee/android/background/AsyncTask;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 146
    sget-object v0, Lcom/vkcoffee/android/background/AsyncTask;->sPool:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/vkcoffee/android/background/AsyncTask$2;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/background/AsyncTask$2;-><init>(Lcom/vkcoffee/android/background/AsyncTask;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 152
    return-object p0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lcom/vkcoffee/android/background/AsyncTask;, "Lcom/vkcoffee/android/background/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/background/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lcom/vkcoffee/android/background/AsyncTask;, "Lcom/vkcoffee/android/background/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/background/AsyncTask;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/vkcoffee/android/background/AsyncTask;, "Lcom/vkcoffee/android/background/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    .local p0, "this":Lcom/vkcoffee/android/background/AsyncTask;, "Lcom/vkcoffee/android/background/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/vkcoffee/android/background/AsyncTask;, "Lcom/vkcoffee/android/background/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 53
    .local p0, "this":Lcom/vkcoffee/android/background/AsyncTask;, "Lcom/vkcoffee/android/background/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onProgressUpdate(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TProgress;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/vkcoffee/android/background/AsyncTask;, "Lcom/vkcoffee/android/background/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "progress":Ljava/lang/Object;, "TProgress;"
    return-void
.end method

.method public publishProgress(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TProgress;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/vkcoffee/android/background/AsyncTask;, "Lcom/vkcoffee/android/background/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "progress":Ljava/lang/Object;, "TProgress;"
    iget-object v1, p0, Lcom/vkcoffee/android/background/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    new-instance v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;-><init>(Lcom/vkcoffee/android/background/AsyncTask;)V

    .line 109
    .local v0, "result":Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;, "Lcom/vkcoffee/android/background/AsyncTask$AsyncResult<TProgress;TResult;>;"
    iput-object p1, v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->progress:Ljava/lang/Object;

    .line 110
    sget-object v1, Lcom/vkcoffee/android/background/AsyncTask;->sHandler:Lcom/vkcoffee/android/background/AsyncTask$Handler;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/background/AsyncTask$Handler;->dispatchProgressUpdate(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;)V

    .line 112
    .end local v0    # "result":Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;, "Lcom/vkcoffee/android/background/AsyncTask$AsyncResult<TProgress;TResult;>;"
    :cond_0
    return-void
.end method
