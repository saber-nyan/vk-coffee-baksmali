.class Lcom/google/android/gms/internal/zzdx$zza;
.super Lcom/google/android/gms/ads/internal/client/zzq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field zzAv:Lcom/google/android/gms/ads/internal/client/zzq;

.field final synthetic zzAw:Lcom/google/android/gms/internal/zzdx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/client/zzq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdx$zza;->zzAw:Lcom/google/android/gms/internal/zzdx;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzq$zza;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdx$zza;->zzAv:Lcom/google/android/gms/ads/internal/client/zzq;

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdx$zza;->zzAv:Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdClosed()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbN()Lcom/google/android/gms/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdy;->zzee()V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdx$zza;->zzAv:Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdx$zza;->zzAv:Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdLeftApplication()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdx$zza;->zzAv:Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdLoaded()V

    return-void
.end method

.method public onAdOpened()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdx$zza;->zzAv:Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdOpened()V

    return-void
.end method
