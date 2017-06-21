.class public final Lcom/google/android/gms/internal/zziq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# static fields
.field private static final zzLU:Ljava/util/concurrent/ExecutorService;

.field private static final zzLV:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    const-string/jumbo v1, "Default"

    invoke-static {v1}, Lcom/google/android/gms/internal/zziq;->zzaB(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zziq;->zzLU:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x5

    const-string/jumbo v1, "Loader"

    invoke-static {v1}, Lcom/google/android/gms/internal/zziq;->zzaB(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zziq;->zzLV:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static zza(ILjava/lang/Runnable;)Lcom/google/android/gms/internal/zzjg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/internal/zzjg",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zziq;->zzLV:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zziq$1;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zziq$1;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zziq;->zza(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzjg;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zziq;->zzLU:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zziq$2;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zziq$2;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zziq;->zza(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzjg;

    move-result-object v0

    goto :goto_0
.end method

.method public static zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzjg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/internal/zzjg",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zziq;->zza(ILjava/lang/Runnable;)Lcom/google/android/gms/internal/zzjg;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzjg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzjg",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zziq;->zzLU:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zziq;->zza(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzjg;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzjg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzjg",
            "<TT;>;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzjd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzjd;-><init>()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zziq$3;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zziq$3;-><init>(Lcom/google/android/gms/internal/zzjd;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zziq$4;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/zziq$4;-><init>(Lcom/google/android/gms/internal/zzjd;Ljava/util/concurrent/Future;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzjd;->zzc(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Thread execution is rejected."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzjd;->cancel(Z)Z

    goto :goto_0
.end method

.method private static zzaB(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zziq$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zziq$5;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
