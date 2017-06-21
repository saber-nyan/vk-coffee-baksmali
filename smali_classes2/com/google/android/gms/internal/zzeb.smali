.class public Lcom/google/android/gms/internal/zzeb;
.super Lcom/google/android/gms/ads/internal/client/zzu$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private zzAD:Lcom/google/android/gms/ads/internal/zzk;

.field private zzAJ:Lcom/google/android/gms/internal/zzdx;

.field private zzAK:Lcom/google/android/gms/internal/zzgh;

.field private zzAL:Ljava/lang/String;

.field private zzAz:Lcom/google/android/gms/internal/zzdv;

.field private zzpS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzdv;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4, p5}, Lcom/google/android/gms/internal/zzdv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzeb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzdv;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzdv;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzu$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeb;->zzpS:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeb;->zzAz:Lcom/google/android/gms/internal/zzdv;

    new-instance v0, Lcom/google/android/gms/internal/zzdx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbN()Lcom/google/android/gms/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzdy;->zza(Lcom/google/android/gms/internal/zzdv;)V

    return-void
.end method

.method private zzel()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAK:Lcom/google/android/gms/internal/zzgh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzAK:Lcom/google/android/gms/internal/zzgh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeb;->zzAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/internal/zzgh;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method abort()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAz:Lcom/google/android/gms/internal/zzdv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzpS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdv;->zzX(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdx;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeb;->zzel()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->destroy()V

    :cond_0
    return-void
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->resume()V

    :cond_0
    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 1
    .param p1, "manualImpressionsEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeb;->abort()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzk;->setManualImpressionsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "useId"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public showInterstitial()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->showInterstitial()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Interstitial ad must be loaded before showInterstitial()."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->stopLoading()V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzdx;->zzAt:Lcom/google/android/gms/ads/internal/client/zzp;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdx;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzdx;->zzpK:Lcom/google/android/gms/ads/internal/client/zzq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdx;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzdx;->zzAq:Lcom/google/android/gms/ads/internal/client/zzw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdx;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeb;->abort()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/ads/internal/client/zzx;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzdx;->zzAu:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdx;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzcf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzdx;->zzAs:Lcom/google/android/gms/internal/zzcf;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdx;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzgd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzdx;->zzAr:Lcom/google/android/gms/internal/zzgd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdx;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzgh;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeb;->zzAK:Lcom/google/android/gms/internal/zzgh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeb;->zzAL:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeb;->zzel()V

    return-void
.end method

.method public zzaM()Lcom/google/android/gms/dynamic/zzd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->zzaM()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaP()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->zzaP()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Interstitial ad must be loaded before pingManualTrackingUrl()."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeb;->zzi(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeb;->abort()V

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztJ:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeb;->abort()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzk;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbN()Lcom/google/android/gms/internal/zzdy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzpS:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzdy;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)Lcom/google/android/gms/internal/zzea$zza;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzea$zza;->zzAG:Z

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzea$zza;->zzh(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/zzea$zza;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzAz:Lcom/google/android/gms/internal/zzdv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzea$zza;->zzc(Lcom/google/android/gms/internal/zzdv;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzea$zza;->zzAE:Lcom/google/android/gms/internal/zzdw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzdw;->zza(Lcom/google/android/gms/internal/zzdx;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzdx;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeb;->zzel()V

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzea$zza;->zzAH:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAz:Lcom/google/android/gms/internal/zzdv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzpS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdv;->zzX(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAJ:Lcom/google/android/gms/internal/zzdx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdx;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeb;->zzel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzk;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    goto :goto_0
.end method

.method zzi(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztM:Landroid/os/Bundle;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "gw"

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
