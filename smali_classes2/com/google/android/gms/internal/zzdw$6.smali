.class Lcom/google/android/gms/internal/zzdw$6;
.super Lcom/google/android/gms/ads/internal/reward/client/zzd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdw;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzAc:Lcom/google/android/gms/internal/zzdw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdw$6;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzd$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedVideoAdClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw$6;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdw;->zza(Lcom/google/android/gms/internal/zzdw;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdw$6$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdw$6$4;-><init>(Lcom/google/android/gms/internal/zzdw$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw$6;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdw;->zza(Lcom/google/android/gms/internal/zzdw;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdw$6$7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzdw$6$7;-><init>(Lcom/google/android/gms/internal/zzdw$6;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw$6;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdw;->zza(Lcom/google/android/gms/internal/zzdw;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdw$6$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdw$6$6;-><init>(Lcom/google/android/gms/internal/zzdw$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw$6;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdw;->zza(Lcom/google/android/gms/internal/zzdw;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdw$6$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdw$6$1;-><init>(Lcom/google/android/gms/internal/zzdw$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw$6;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdw;->zza(Lcom/google/android/gms/internal/zzdw;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdw$6$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdw$6$2;-><init>(Lcom/google/android/gms/internal/zzdw$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw$6;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdw;->zza(Lcom/google/android/gms/internal/zzdw;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdw$6$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdw$6$3;-><init>(Lcom/google/android/gms/internal/zzdw$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zza;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw$6;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdw;->zza(Lcom/google/android/gms/internal/zzdw;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdw$6$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzdw$6$5;-><init>(Lcom/google/android/gms/internal/zzdw$6;Lcom/google/android/gms/ads/internal/reward/client/zza;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
