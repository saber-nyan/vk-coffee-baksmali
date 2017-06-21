.class public Lcom/google/android/gms/ads/internal/client/zzah;
.super Lcom/google/android/gms/ads/internal/client/zzu$zza;


# instance fields
.field private zzpK:Lcom/google/android/gms/ads/internal/client/zzq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzu$zza;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/client/zzah;)Lcom/google/android/gms/ads/internal/client/zzq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzah;->zzpK:Lcom/google/android/gms/ads/internal/client/zzq;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public showInterstitial()V
    .locals 0

    return-void
.end method

.method public stopLoading()V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzp;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzah;->zzpK:Lcom/google/android/gms/ads/internal/client/zzq;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzw;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzx;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzcf;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzgd;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzgh;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public zzaM()Lcom/google/android/gms/dynamic/zzd;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzaP()V
    .locals 0

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 2

    const-string/jumbo v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzMS:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzah$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzah$1;-><init>(Lcom/google/android/gms/ads/internal/client/zzah;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method
