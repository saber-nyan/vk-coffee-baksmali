.class public Lcom/google/android/gms/ads/internal/zzp;
.super Lcom/google/android/gms/ads/internal/zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzfb;)Lcom/google/android/gms/ads/internal/formats/zzd;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->zzdK()Lcom/google/android/gms/internal/zzch;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->zzdK()Lcom/google/android/gms/internal/zzch;

    move-result-object v4

    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getStarRating()D

    move-result-wide v6

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getStore()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getPrice()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/formats/zzd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzch;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    move-object v4, v10

    goto :goto_0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzfc;)Lcom/google/android/gms/ads/internal/formats/zze;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfc;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfc;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfc;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfc;->zzdO()Lcom/google/android/gms/internal/zzch;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfc;->zzdO()Lcom/google/android/gms/internal/zzch;

    move-result-object v4

    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfc;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfc;->getAdvertiser()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfc;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/formats/zze;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzch;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    move-object v4, v7

    goto :goto_0
.end method

.method private zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzp$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzp$2;-><init>(Lcom/google/android/gms/ads/internal/zzp;Lcom/google/android/gms/ads/internal/formats/zzd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/ads/internal/formats/zze;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzp$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzp$3;-><init>(Lcom/google/android/gms/ads/internal/zzp;Lcom/google/android/gms/ads/internal/formats/zze;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzif;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzp$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/ads/internal/zzp$4;-><init>(Lcom/google/android/gms/ads/internal/zzp;Ljava/lang/String;Lcom/google/android/gms/internal/zzif;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resume()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcu;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrC:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzKT:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzih;->zzhh()Lcom/google/android/gms/internal/zzax;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzax;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/ads/internal/formats/zzh;)Lcom/google/android/gms/internal/zzau;

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzcf;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzgd;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzcb;)V
    .locals 10

    iget-object v0, p1, Lcom/google/android/gms/internal/zzif$zza;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzif$zza;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzif$zza;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzp$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzp$1;-><init>(Lcom/google/android/gms/ads/internal/zzp;Lcom/google/android/gms/internal/zzif$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrL:I

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbB()Lcom/google/android/gms/internal/zzgr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrk:Lcom/google/android/gms/internal/zzan;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpn:Lcom/google/android/gms/internal/zzex;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p0

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/zzgr;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/internal/zzgr$zza;Lcom/google/android/gms/internal/zzcb;)Lcom/google/android/gms/internal/zzit;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/zzs;->zzro:Lcom/google/android/gms/internal/zzit;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AdRenderer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzro:Lcom/google/android/gms/internal/zzit;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zza(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrH:Ljava/util/List;

    return-void
.end method

.method protected zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzif;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpi:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->zzbw()Z

    move-result v0

    return v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzif;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzp;->zza(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzbW()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzif;->zzHT:Z

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/zzif;->zzCq:Lcom/google/android/gms/internal/zzey;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzey;->zzeF()Lcom/google/android/gms/internal/zzfb;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzif;->zzCq:Lcom/google/android/gms/internal/zzey;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzey;->zzeG()Lcom/google/android/gms/internal/zzfc;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzfb;)Lcom/google/android/gms/ads/internal/formats/zzd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/zzg;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzs;->zzrk:Lcom/google/android/gms/internal/zzan;

    invoke-direct {v2, v3, p0, v4, v0}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzp;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzfb;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->zzb(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzif;)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzfc;)Lcom/google/android/gms/ads/internal/formats/zze;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/zzg;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzs;->zzrk:Lcom/google/android/gms/internal/zzan;

    invoke-direct {v2, v3, p0, v4, v1}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzp;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzfc;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/formats/zze;->zzb(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/ads/internal/formats/zze;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to get native ad mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "No matching mapper for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzp;->zzf(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v1, p2, Lcom/google/android/gms/internal/zzif;->zzLa:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/zze;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrA:Lcom/google/android/gms/internal/zzcs;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/google/android/gms/internal/zzif;->zzLa:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/ads/internal/formats/zze;)V

    goto :goto_0

    :cond_4
    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/zzd;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrz:Lcom/google/android/gms/internal/zzcr;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/google/android/gms/internal/zzif;->zzLa:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V

    goto :goto_0

    :cond_5
    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/zzf;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrC:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrC:Landroid/support/v4/util/SimpleArrayMap;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzf;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/formats/zzf;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzif;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "No matching listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zzf(I)V

    move v0, v2

    goto/16 :goto_1
.end method

.method public zzb(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzct;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrB:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .locals 1

    const-string/jumbo v0, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrD:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzcr;)V
    .locals 1

    const-string/jumbo v0, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrz:Lcom/google/android/gms/internal/zzcr;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzcs;)V
    .locals 1

    const-string/jumbo v0, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrA:Lcom/google/android/gms/internal/zzcs;

    return-void
.end method

.method public zzbv()Landroid/support/v4/util/SimpleArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcu;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrC:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method public zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/zzct;
    .locals 1

    const-string/jumbo v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrB:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzct;

    return-object v0
.end method
