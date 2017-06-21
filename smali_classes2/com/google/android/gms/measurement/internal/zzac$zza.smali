.class public Lcom/google/android/gms/measurement/internal/zzac$zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

.field private volatile zzaYV:Z

.field private volatile zzaYW:Lcom/google/android/gms/measurement/internal/zzo;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzac$zza;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYV:Z

    return p1
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "connectionHint"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const-string/jumbo v0, "MeasurementServiceConnection.onConnected"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYW:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzqJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzm;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYW:Lcom/google/android/gms/measurement/internal/zzo;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zzCn()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzac$zza$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzac$zza$3;-><init>(Lcom/google/android/gms/measurement/internal/zzac$zza;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzv;->zzg(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYW:Lcom/google/android/gms/measurement/internal/zzo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYV:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const-string/jumbo v0, "MeasurementServiceConnection.onConnectionFailed"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzCT()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCF()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Service connection failed"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYV:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYW:Lcom/google/android/gms/measurement/internal/zzo;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .locals 2
    .param p1, "cause"    # I
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const-string/jumbo v0, "MeasurementServiceConnection.onConnectionSuspended"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCJ()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Service connection suspended"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzfg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzCn()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzac$zza$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzac$zza$4;-><init>(Lcom/google/android/gms/measurement/internal/zzac$zza;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzv;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const-string/jumbo v0, "MeasurementServiceConnection.onServiceConnected"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    monitor-enter p0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYV:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCE()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Service connected with null binder"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzfg(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzm$zza;->zzdn(Landroid/os/IBinder;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzp;->zzCK()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v1

    const-string/jumbo v2, "Bound to IMeasurementService interface"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzfg(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYV:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzrP()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzac;)Lcom/google/android/gms/measurement/internal/zzac$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzp;->zzCE()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v2

    const-string/jumbo v3, "Got binder with a wrong descriptor"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzp;->zzCE()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v1

    const-string/jumbo v2, "Service connect failed to get IMeasurementService"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzfg(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zzCn()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzac$zza$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzac$zza$1;-><init>(Lcom/google/android/gms/measurement/internal/zzac$zza;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzv;->zzg(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const-string/jumbo v0, "MeasurementServiceConnection.onServiceDisconnected"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCJ()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzfg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzCn()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzac$zza$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzac$zza$2;-><init>(Lcom/google/android/gms/measurement/internal/zzac$zza;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzv;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzDt()V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzjk()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->getContext()Landroid/content/Context;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYV:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCK()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzfg(Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYW:Lcom/google/android/gms/measurement/internal/zzo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCK()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Already awaiting connection attempt"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzfg(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzo;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzf;->zzat(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzf;

    move-result-object v3

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYW:Lcom/google/android/gms/measurement/internal/zzo;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCK()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Connecting to remote service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzfg(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYV:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYW:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzqG()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public zzz(Landroid/content/Intent;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzjk()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzrP()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYV:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCK()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzfg(Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYV:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzac;)Lcom/google/android/gms/measurement/internal/zzac$zza;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
