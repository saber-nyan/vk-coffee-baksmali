.class Lcom/google/android/gms/internal/zzgu$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgu;->zzgk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGB:Lcom/google/android/gms/internal/zzgu;

.field final synthetic zzqu:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgu;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgu$1;->zzGB:Lcom/google/android/gms/internal/zzgu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgu$1;->zzqu:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu$1;->zzGB:Lcom/google/android/gms/internal/zzgu;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzgu;->zzGg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu$1;->zzGB:Lcom/google/android/gms/internal/zzgu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgu$1;->zzGB:Lcom/google/android/gms/internal/zzgu;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzgu;->zza(Lcom/google/android/gms/internal/zzgu;)Lcom/google/android/gms/internal/zzjp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgu$1;->zzGB:Lcom/google/android/gms/internal/zzgu;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzgu;->zzGz:Lcom/google/android/gms/internal/zzes;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgu$1;->zzqu:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzes;Ljava/util/concurrent/CountDownLatch;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzgu;->zza(Lcom/google/android/gms/internal/zzgu;Z)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
