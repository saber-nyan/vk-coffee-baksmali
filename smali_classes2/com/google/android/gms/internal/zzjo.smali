.class public Lcom/google/android/gms/internal/zzjo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;

.field private final zzNx:Landroid/view/ViewGroup;

.field private final zzpD:Lcom/google/android/gms/internal/zzjp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzjp;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzjo;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/ads/internal/overlay/zzk;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/ads/internal/overlay/zzk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjo;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjo;->zzNx:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzjo;->zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    const-string/jumbo v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->destroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const-string/jumbo v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->pause()V

    :cond_0
    return-void
.end method

.method public zza(IIIII)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzic()Lcom/google/android/gms/internal/zzca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzca;->zzdA()Lcom/google/android/gms/internal/zzcb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzjp;->zzib()Lcom/google/android/gms/internal/zzbz;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "vpr"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzbx;->zza(Lcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/internal/zzbz;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzic()Lcom/google/android/gms/internal/zzca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzca;->zzdA()Lcom/google/android/gms/internal/zzcb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbx;->zzb(Lcom/google/android/gms/internal/zzcb;)Lcom/google/android/gms/internal/zzbz;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzjp;->zzic()Lcom/google/android/gms/internal/zzca;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzca;->zzdA()Lcom/google/android/gms/internal/zzcb;

    move-result-object v4

    move v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/zzk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjp;ILcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/internal/zzbz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzNx:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjo;->zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzd(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/zzjq;->zzG(Z)V

    goto :goto_0
.end method

.method public zze(IIII)V
    .locals 1

    const-string/jumbo v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzd(IIII)V

    :cond_0
    return-void
.end method

.method public zzhM()Lcom/google/android/gms/ads/internal/overlay/zzk;
    .locals 1

    const-string/jumbo v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    return-object v0
.end method
