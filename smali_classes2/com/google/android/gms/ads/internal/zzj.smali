.class public Lcom/google/android/gms/ads/internal/zzj;
.super Lcom/google/android/gms/ads/internal/client/zzs$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzpK:Lcom/google/android/gms/ads/internal/client/zzq;

.field private zzpP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private zzpR:Lcom/google/android/gms/ads/internal/client/zzx;

.field private final zzpS:Ljava/lang/String;

.field private final zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzpY:Lcom/google/android/gms/internal/zzcr;

.field private zzpZ:Lcom/google/android/gms/internal/zzcs;

.field private final zzpm:Lcom/google/android/gms/ads/internal/zzd;

.field private final zzpn:Lcom/google/android/gms/internal/zzex;

.field private zzqa:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzct;",
            ">;"
        }
    .end annotation
.end field

.field private zzqb:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzs$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpS:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpn:Lcom/google/android/gms/internal/zzex;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqb:Landroid/support/v4/util/SimpleArrayMap;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqa:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpm:Lcom/google/android/gms/ads/internal/zzd;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzcr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpY:Lcom/google/android/gms/internal/zzcr;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzcs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpZ:Lcom/google/android/gms/internal/zzcs;

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzct;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqb:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqa:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/zzq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpK:Lcom/google/android/gms/ads/internal/client/zzq;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/zzx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpR:Lcom/google/android/gms/ads/internal/client/zzx;

    return-void
.end method

.method public zzbn()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 13

    new-instance v0, Lcom/google/android/gms/ads/internal/zzi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpS:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpn:Lcom/google/android/gms/internal/zzex;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpK:Lcom/google/android/gms/ads/internal/client/zzq;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpY:Lcom/google/android/gms/internal/zzcr;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpZ:Lcom/google/android/gms/internal/zzcs;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqb:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqa:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v10, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-object v11, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpR:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object v12, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpm:Lcom/google/android/gms/ads/internal/zzd;

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/ads/internal/zzi;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/zzcr;Lcom/google/android/gms/internal/zzcs;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Lcom/google/android/gms/ads/internal/client/zzx;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method
