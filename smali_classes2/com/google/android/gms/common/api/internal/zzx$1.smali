.class Lcom/google/android/gms/common/api/internal/zzx$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/internal/zzx;->onResult(Lcom/google/android/gms/common/api/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaiT:Lcom/google/android/gms/common/api/Result;

.field final synthetic zzaiU:Lcom/google/android/gms/common/api/internal/zzx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzx;Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiU:Lcom/google/android/gms/common/api/internal/zzx;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiT:Lcom/google/android/gms/common/api/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiU:Lcom/google/android/gms/common/api/internal/zzx;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzx;->zzc(Lcom/google/android/gms/common/api/internal/zzx;)Lcom/google/android/gms/common/api/ResultTransform;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiT:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/ResultTransform;->onSuccess(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiU:Lcom/google/android/gms/common/api/internal/zzx;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzx;->zzd(Lcom/google/android/gms/common/api/internal/zzx;)Lcom/google/android/gms/common/api/internal/zzx$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiU:Lcom/google/android/gms/common/api/internal/zzx;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zzx;->zzd(Lcom/google/android/gms/common/api/internal/zzx;)Lcom/google/android/gms/common/api/internal/zzx$zza;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/common/api/internal/zzx$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zzx$zza;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiU:Lcom/google/android/gms/common/api/internal/zzx;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiT:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzx;->zza(Lcom/google/android/gms/common/api/internal/zzx;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiU:Lcom/google/android/gms/common/api/internal/zzx;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzx;->zze(Lcom/google/android/gms/common/api/internal/zzx;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiU:Lcom/google/android/gms/common/api/internal/zzx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/internal/zzx;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiU:Lcom/google/android/gms/common/api/internal/zzx;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzx;->zzd(Lcom/google/android/gms/common/api/internal/zzx;)Lcom/google/android/gms/common/api/internal/zzx$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiU:Lcom/google/android/gms/common/api/internal/zzx;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zzx;->zzd(Lcom/google/android/gms/common/api/internal/zzx;)Lcom/google/android/gms/common/api/internal/zzx$zza;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/common/api/internal/zzx$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zzx$zza;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiU:Lcom/google/android/gms/common/api/internal/zzx;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiT:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzx;->zza(Lcom/google/android/gms/common/api/internal/zzx;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiU:Lcom/google/android/gms/common/api/internal/zzx;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzx;->zze(Lcom/google/android/gms/common/api/internal/zzx;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiU:Lcom/google/android/gms/common/api/internal/zzx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/internal/zzx;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiU:Lcom/google/android/gms/common/api/internal/zzx;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiT:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/internal/zzx;->zza(Lcom/google/android/gms/common/api/internal/zzx;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiU:Lcom/google/android/gms/common/api/internal/zzx;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzx;->zze(Lcom/google/android/gms/common/api/internal/zzx;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzx$1;->zzaiU:Lcom/google/android/gms/common/api/internal/zzx;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/internal/zzx;)V

    :cond_1
    throw v1
.end method
