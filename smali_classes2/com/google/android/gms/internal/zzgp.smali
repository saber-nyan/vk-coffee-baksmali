.class public Lcom/google/android/gms/internal/zzgp;
.super Lcom/google/android/gms/internal/zzgn;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private zzGs:Lcom/google/android/gms/internal/zzgo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzgr$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzgn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzgr$zza;)V

    return-void
.end method


# virtual methods
.method protected zzgb()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzui:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/zzgo;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgp;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/google/android/gms/internal/zzgo;-><init>(Lcom/google/android/gms/internal/zzjq$zza;Lcom/google/android/gms/internal/zzjp;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzgp;->zzGs:Lcom/google/android/gms/internal/zzgo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzjq;->zza(Lcom/google/android/gms/internal/zzjq$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->zzGs:Lcom/google/android/gms/internal/zzgo;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgp;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgo;->zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    return-void

    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    goto :goto_0
.end method

.method protected zzgc()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->zzGs:Lcom/google/android/gms/internal/zzgo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgo;->zzgg()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Ad-Network indicated no fill with passback URL."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->zzGs:Lcom/google/android/gms/internal/zzgo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgo;->zzgh()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method
