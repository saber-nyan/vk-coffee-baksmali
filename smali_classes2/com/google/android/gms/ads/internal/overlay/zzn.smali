.class public Lcom/google/android/gms/ads/internal/overlay/zzn;
.super Lcom/google/android/gms/ads/internal/overlay/zzj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzj;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzjp;ILcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/internal/zzbz;)Lcom/google/android/gms/ads/internal/overlay/zzi;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzx(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v6, Lcom/google/android/gms/ads/internal/overlay/zzc;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzjp;->zzhX()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzjp;->getRequestId()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/zzt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/internal/zzbz;)V

    invoke-direct {v6, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzt;)V

    move-object v0, v6

    goto :goto_0
.end method
