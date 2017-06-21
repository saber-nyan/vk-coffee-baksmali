.class public final Lcom/google/android/gms/internal/zzeq;
.super Lcom/google/android/gms/internal/zzez$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private zzCb:Lcom/google/android/gms/internal/zzes$zza;

.field private zzCc:Lcom/google/android/gms/internal/zzep;

.field private final zzpV:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzez$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzpV:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCc:Lcom/google/android/gms/internal/zzep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCc:Lcom/google/android/gms/internal/zzep;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzep;->zzaY()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdClosed()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCc:Lcom/google/android/gms/internal/zzep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCc:Lcom/google/android/gms/internal/zzep;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzep;->zzaZ()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdFailedToLoad(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCb:Lcom/google/android/gms/internal/zzes$zza;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeq;->zzCb:Lcom/google/android/gms/internal/zzes$zza;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzes$zza;->zzr(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCb:Lcom/google/android/gms/internal/zzes$zza;

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdLeftApplication()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCc:Lcom/google/android/gms/internal/zzep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCc:Lcom/google/android/gms/internal/zzep;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzep;->zzba()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdLoaded()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCb:Lcom/google/android/gms/internal/zzes$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCb:Lcom/google/android/gms/internal/zzes$zza;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzes$zza;->zzr(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCb:Lcom/google/android/gms/internal/zzes$zza;

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCc:Lcom/google/android/gms/internal/zzep;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCc:Lcom/google/android/gms/internal/zzep;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzep;->zzbc()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdOpened()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCc:Lcom/google/android/gms/internal/zzep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCc:Lcom/google/android/gms/internal/zzep;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzep;->zzbb()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzep;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzeq;->zzCc:Lcom/google/android/gms/internal/zzep;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzes$zza;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzeq;->zzCb:Lcom/google/android/gms/internal/zzes$zza;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzfa;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCb:Lcom/google/android/gms/internal/zzes$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCb:Lcom/google/android/gms/internal/zzes$zza;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/zzes$zza;->zza(ILcom/google/android/gms/internal/zzfa;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCb:Lcom/google/android/gms/internal/zzes$zza;

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCc:Lcom/google/android/gms/internal/zzep;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzCc:Lcom/google/android/gms/internal/zzep;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzep;->zzbc()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
