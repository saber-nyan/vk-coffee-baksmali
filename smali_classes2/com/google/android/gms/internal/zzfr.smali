.class public Lcom/google/android/gms/internal/zzfr;
.super Lcom/google/android/gms/internal/zzfs;

# interfaces
.implements Lcom/google/android/gms/internal/zzdf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field zzDA:Landroid/util/DisplayMetrics;

.field private zzDB:F

.field zzDC:I

.field zzDD:I

.field private zzDE:I

.field zzDF:I

.field zzDG:I

.field zzDH:I

.field zzDI:I

.field private final zzDz:Lcom/google/android/gms/internal/zzbl;

.field private final zzpD:Lcom/google/android/gms/internal/zzjp;

.field private final zzsb:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzjp;Landroid/content/Context;Lcom/google/android/gms/internal/zzbl;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfs;-><init>(Lcom/google/android/gms/internal/zzjp;)V

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDC:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDD:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDF:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDG:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDH:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDI:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfr;->zzpD:Lcom/google/android/gms/internal/zzjp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfr;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfr;->zzDz:Lcom/google/android/gms/internal/zzbl;

    const-string/jumbo v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfr;->zzsb:Landroid/view/WindowManager;

    return-void
.end method

.method private zzeQ()V
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDA:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfr;->zzsb:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr;->zzDA:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr;->zzDA:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/zzfr;->zzDB:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDE:I

    return-void
.end method

.method private zzeV()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzjp;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfr;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfr;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzfr;->zzf(II)V

    return-void
.end method

.method private zzeY()Lcom/google/android/gms/internal/zzfq;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfq$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfq$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr;->zzDz:Lcom/google/android/gms/internal/zzbl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbl;->zzdj()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfq$zza;->zzr(Z)Lcom/google/android/gms/internal/zzfq$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr;->zzDz:Lcom/google/android/gms/internal/zzbl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbl;->zzdk()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfq$zza;->zzq(Z)Lcom/google/android/gms/internal/zzfq$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr;->zzDz:Lcom/google/android/gms/internal/zzbl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbl;->zzdo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfq$zza;->zzs(Z)Lcom/google/android/gms/internal/zzfq$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr;->zzDz:Lcom/google/android/gms/internal/zzbl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbl;->zzdl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfq$zza;->zzt(Z)Lcom/google/android/gms/internal/zzfq$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr;->zzDz:Lcom/google/android/gms/internal/zzbl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbl;->zzdm()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfq$zza;->zzu(Z)Lcom/google/android/gms/internal/zzfq$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfq$zza;->zzeP()Lcom/google/android/gms/internal/zzfq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjp;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzjp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfr;->zzeT()V

    return-void
.end method

.method zzeR()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr;->zzDA:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfr;->zzDA:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDC:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr;->zzDA:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfr;->zzDA:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDD:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfr;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhP()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDC:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDF:I

    iget v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDD:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDG:I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzir;->zze(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfr;->zzDA:Landroid/util/DisplayMetrics;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzfr;->zzDF:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfr;->zzDA:Landroid/util/DisplayMetrics;

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDG:I

    goto :goto_0
.end method

.method zzeS()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfr;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzui:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDC:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDH:I

    iget v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDD:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDI:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfr;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0, v1, v1}, Lcom/google/android/gms/internal/zzjp;->measure(II)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfr;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjp;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDH:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfr;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjp;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfr;->zzDI:I

    goto :goto_0
.end method

.method public zzeT()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfr;->zzeQ()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfr;->zzeR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfr;->zzeS()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfr;->zzeW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfr;->zzeX()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfr;->zzeV()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfr;->zzeU()V

    return-void
.end method

.method zzeU()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzQ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Dispatching Ready Event."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaJ(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfr;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhX()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfr;->zzan(Ljava/lang/String;)V

    return-void
.end method

.method zzeW()V
    .locals 7

    iget v1, p0, Lcom/google/android/gms/internal/zzfr;->zzDC:I

    iget v2, p0, Lcom/google/android/gms/internal/zzfr;->zzDD:I

    iget v3, p0, Lcom/google/android/gms/internal/zzfr;->zzDF:I

    iget v4, p0, Lcom/google/android/gms/internal/zzfr;->zzDG:I

    iget v5, p0, Lcom/google/android/gms/internal/zzfr;->zzDB:F

    iget v6, p0, Lcom/google/android/gms/internal/zzfr;->zzDE:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzfr;->zza(IIIIFI)V

    return-void
.end method

.method zzeX()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfr;->zzeY()Lcom/google/android/gms/internal/zzfq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr;->zzpD:Lcom/google/android/gms/internal/zzjp;

    const-string/jumbo v2, "onDeviceFeaturesReceived"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfq;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzjp;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzf(II)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfr;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfr;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzir;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    :goto_0
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/zzfr;->zzDH:I

    iget v2, p0, Lcom/google/android/gms/internal/zzfr;->zzDI:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzfr;->zzc(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfr;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzjq;->zze(II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
