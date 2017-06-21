.class Lcom/google/android/gms/internal/zzdw$1;
.super Lcom/google/android/gms/ads/internal/client/zzq$zza;


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

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdw$1;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzq$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw$1;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdw;->zza(Lcom/google/android/gms/internal/zzdw;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdw$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdw$1$1;-><init>(Lcom/google/android/gms/internal/zzdw$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw$1;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdw;->zza(Lcom/google/android/gms/internal/zzdw;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdw$1$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzdw$1$2;-><init>(Lcom/google/android/gms/internal/zzdw$1;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "Pooled interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw$1;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdw;->zza(Lcom/google/android/gms/internal/zzdw;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdw$1$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdw$1$3;-><init>(Lcom/google/android/gms/internal/zzdw$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAdLoaded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw$1;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdw;->zza(Lcom/google/android/gms/internal/zzdw;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdw$1$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdw$1$4;-><init>(Lcom/google/android/gms/internal/zzdw$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "Pooled interstitial loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw$1;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdw;->zza(Lcom/google/android/gms/internal/zzdw;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdw$1$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdw$1$5;-><init>(Lcom/google/android/gms/internal/zzdw$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
