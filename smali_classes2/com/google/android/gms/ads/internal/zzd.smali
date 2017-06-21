.class public Lcom/google/android/gms/ads/internal/zzd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field public final zzpw:Lcom/google/android/gms/internal/zzdt;

.field public final zzpx:Lcom/google/android/gms/ads/internal/overlay/zzj;

.field public final zzpy:Lcom/google/android/gms/ads/internal/overlay/zzm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdt;Lcom/google/android/gms/ads/internal/overlay/zzj;Lcom/google/android/gms/ads/internal/overlay/zzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzd;->zzpw:Lcom/google/android/gms/internal/zzdt;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzd;->zzpx:Lcom/google/android/gms/ads/internal/overlay/zzj;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzd;->zzpy:Lcom/google/android/gms/ads/internal/overlay/zzm;

    return-void
.end method

.method public static zzbg()Lcom/google/android/gms/ads/internal/zzd;
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/internal/zzd;

    new-instance v1, Lcom/google/android/gms/internal/zzdc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdc;-><init>()V

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/overlay/zzn;-><init>()V

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/zzd;-><init>(Lcom/google/android/gms/internal/zzdt;Lcom/google/android/gms/ads/internal/overlay/zzj;Lcom/google/android/gms/ads/internal/overlay/zzm;)V

    return-object v0
.end method
