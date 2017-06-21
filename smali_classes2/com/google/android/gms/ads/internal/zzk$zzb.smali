.class Lcom/google/android/gms/ads/internal/zzk$zzb;
.super Lcom/google/android/gms/internal/zzim;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field private final zzqg:Ljava/lang/String;

.field final synthetic zzqh:Lcom/google/android/gms/ads/internal/zzk;

.field private final zzqi:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzk;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzim;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqi:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method public zzbr()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzk;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzql:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzk;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqi:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzir;->zza(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    :goto_0
    new-instance v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzk;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzql:Z

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzk;->zzbo()Z

    move-result v2

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqg:Ljava/lang/String;

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/ads/internal/zzk;)Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/zzk;->zzb(Lcom/google/android/gms/ads/internal/zzk;)F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;-><init>(ZZLjava/lang/String;ZF)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzk;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzjp;->getRequestedOrientation()I

    move-result v6

    const/4 v1, -0x1

    if-ne v6, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzk;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget v6, v1, Lcom/google/android/gms/internal/zzif;->orientation:I

    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzk;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/zzk;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/zzs;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/zzk;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzif;->zzHY:Ljava/lang/String;

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/zzjp;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;)V

    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzk$zzb$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/ads/internal/zzk$zzb$1;-><init>(Lcom/google/android/gms/ads/internal/zzk$zzb;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
