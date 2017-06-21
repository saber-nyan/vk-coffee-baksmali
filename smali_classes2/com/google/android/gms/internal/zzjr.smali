.class public Lcom/google/android/gms/internal/zzjr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzan;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzjp;
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/zzjr;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzan;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzjp;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzan;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzjp;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzjs;

    invoke-static/range {p1 .. p8}, Lcom/google/android/gms/internal/zzjt;->zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzan;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzjt;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzjs;-><init>(Lcom/google/android/gms/internal/zzjp;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbE()Lcom/google/android/gms/internal/zzis;

    move-result-object v1

    invoke-virtual {v1, v0, p4}, Lcom/google/android/gms/internal/zzis;->zzb(Lcom/google/android/gms/internal/zzjp;Z)Lcom/google/android/gms/internal/zzjq;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjp;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbE()Lcom/google/android/gms/internal/zzis;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzis;->zzk(Lcom/google/android/gms/internal/zzjp;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjp;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v0
.end method
