.class public Lcom/google/android/gms/internal/zzef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzed;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final zzpD:Lcom/google/android/gms/internal/zzjp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzan;)V
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbD()Lcom/google/android/gms/internal/zzjr;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    move-object v1, p1

    move v4, v3

    move-object v5, p3

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzjr;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzan;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzjp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzpD:Lcom/google/android/gms/internal/zzjp;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzhJ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzef;)Lcom/google/android/gms/internal/zzjp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzpD:Lcom/google/android/gms/internal/zzjp;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->destroy()V

    return-void
.end method

.method public zzZ(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzef$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzef$3;-><init>(Lcom/google/android/gms/internal/zzef;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzef;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/ads/internal/overlay/zzp;ZLcom/google/android/gms/internal/zzdh;Lcom/google/android/gms/internal/zzdj;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzft;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/ads/internal/zze;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/google/android/gms/ads/internal/zze;-><init>(Z)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzjq;->zzb(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/ads/internal/overlay/zzp;ZLcom/google/android/gms/internal/zzdh;Lcom/google/android/gms/internal/zzdj;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzft;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzed$zza;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzef$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzef$6;-><init>(Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/internal/zzed$zza;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjq;->zza(Lcom/google/android/gms/internal/zzjq$zza;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzjq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzef$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzef$1;-><init>(Lcom/google/android/gms/internal/zzef;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzef;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzaa(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzef$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzef$5;-><init>(Lcom/google/android/gms/internal/zzef;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzef;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzab(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzef$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzef$4;-><init>(Lcom/google/android/gms/internal/zzef;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzef;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzjq;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzjp;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zze(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzef$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzef$2;-><init>(Lcom/google/android/gms/internal/zzef;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzef;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzen()Lcom/google/android/gms/internal/zzei;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzej;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzej;-><init>(Lcom/google/android/gms/internal/zzeh;)V

    return-object v0
.end method
