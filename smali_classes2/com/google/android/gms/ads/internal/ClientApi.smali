.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retainReference()V
    .locals 1

    const-class v0, Lcom/google/android/gms/ads/internal/ClientApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzuq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createAdLoaderBuilder(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/zzs;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adUnitId"    # Ljava/lang/String;
    .param p3, "adapterCreator"    # Lcom/google/android/gms/internal/zzew;
    .param p4, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    new-instance v0, Lcom/google/android/gms/ads/internal/zzj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzd;->zzbg()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method

.method public createAdOverlay(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzfv;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public createBannerAdManager(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/zzu;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .param p3, "adUnitId"    # Ljava/lang/String;
    .param p4, "adapterCreator"    # Lcom/google/android/gms/internal/zzew;
    .param p5, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    new-instance v0, Lcom/google/android/gms/ads/internal/zzf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzd;->zzbg()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method

.method public createInAppPurchaseManager(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzge;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zze;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/purchase/zze;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public createInterstitialAdManager(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/zzu;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .param p3, "adUnitId"    # Ljava/lang/String;
    .param p4, "adapterCreator"    # Lcom/google/android/gms/internal/zzew;
    .param p5, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzwE:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzeb;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzd;->zzbg()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v5

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzeb;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/zzk;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzd;->zzbg()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzk;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    goto :goto_0
.end method

.method public createNativeAdViewDelegate(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzcj;
    .locals 1
    .param p1, "nativeAdView"    # Landroid/widget/FrameLayout;
    .param p2, "overlayFrame"    # Landroid/widget/FrameLayout;

    .prologue
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzk;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/internal/formats/zzk;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    return-object v0
.end method

.method public createRewardedVideoAd(Landroid/content/Context;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/reward/client/zzb;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterCreator"    # Lcom/google/android/gms/internal/zzew;
    .param p3, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/zzhs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzd;->zzbg()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/google/android/gms/internal/zzhs;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object v0
.end method

.method public getMobileAdsSettingsManager(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzy;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzn;->zzr(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/zzn;

    move-result-object v0

    return-object v0
.end method
