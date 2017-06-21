.class public Lcom/google/android/gms/internal/zzhs;
.super Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzKu:Lcom/google/android/gms/internal/zzht;

.field private final zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzpV:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhs;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzhs;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/zzht;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzcP()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzht;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzKu:Lcom/google/android/gms/internal/zzht;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzpV:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzKu:Lcom/google/android/gms/internal/zzht;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzht;->destroy()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLoaded()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzKu:Lcom/google/android/gms/internal/zzht;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzht;->isLoaded()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzKu:Lcom/google/android/gms/internal/zzht;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzht;->pause()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzKu:Lcom/google/android/gms/internal/zzht;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzht;->resume()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzKu:Lcom/google/android/gms/internal/zzht;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzht;->setUserId(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public show()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzKu:Lcom/google/android/gms/internal/zzht;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzht;->zzgL()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzKu:Lcom/google/android/gms/internal/zzht;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzht;->zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzKu:Lcom/google/android/gms/internal/zzht;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzht;->zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
