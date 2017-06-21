.class public Lcom/google/android/gms/internal/zzba;
.super Lcom/google/android/gms/internal/zzau;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private zzsF:Lcom/google/android/gms/internal/zzeg$zzd;

.field private zzsG:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzeg;)V
    .locals 3

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzau;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzbb;)V

    invoke-virtual {p6}, Lcom/google/android/gms/internal/zzeg;->zzer()Lcom/google/android/gms/internal/zzeg$zzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->zzsF:Lcom/google/android/gms/internal/zzeg$zzd;

    :try_start_0
    invoke-interface {p5}, Lcom/google/android/gms/internal/zzbb;->zzcq()Lcom/google/android/gms/internal/zzbb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbb;->zzco()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzba;->zzd(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzba;->zzsF:Lcom/google/android/gms/internal/zzeg$zzd;

    new-instance v2, Lcom/google/android/gms/internal/zzba$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzba$1;-><init>(Lcom/google/android/gms/internal/zzba;Lorg/json/JSONObject;)V

    new-instance v0, Lcom/google/android/gms/internal/zzba$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzba$2;-><init>(Lcom/google/android/gms/internal/zzba;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzeg$zzd;->zza(Lcom/google/android/gms/internal/zzji$zzc;Lcom/google/android/gms/internal/zzji$zza;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzba;->zzsF:Lcom/google/android/gms/internal/zzeg$zzd;

    new-instance v1, Lcom/google/android/gms/internal/zzba$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzba$3;-><init>(Lcom/google/android/gms/internal/zzba;)V

    new-instance v2, Lcom/google/android/gms/internal/zzba$4;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzba$4;-><init>(Lcom/google/android/gms/internal/zzba;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzeg$zzd;->zza(Lcom/google/android/gms/internal/zzji$zzc;Lcom/google/android/gms/internal/zzji$zza;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Tracking ad unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzba;->zzrZ:Lcom/google/android/gms/internal/zzaw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaw;->zzcu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failure while processing active view data."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzba;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzba;->zzsG:Z

    return p1
.end method


# virtual methods
.method protected destroy()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzba;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzau;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzba;->zzsF:Lcom/google/android/gms/internal/zzeg$zzd;

    new-instance v2, Lcom/google/android/gms/internal/zzba$6;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzba$6;-><init>(Lcom/google/android/gms/internal/zzba;)V

    new-instance v3, Lcom/google/android/gms/internal/zzji$zzb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzji$zzb;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzeg$zzd;->zza(Lcom/google/android/gms/internal/zzji$zzc;Lcom/google/android/gms/internal/zzji$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzba;->zzsF:Lcom/google/android/gms/internal/zzeg$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg$zzd;->release()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzb(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzba;->zzsF:Lcom/google/android/gms/internal/zzeg$zzd;

    new-instance v1, Lcom/google/android/gms/internal/zzba$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzba$5;-><init>(Lcom/google/android/gms/internal/zzba;Lorg/json/JSONObject;)V

    new-instance v2, Lcom/google/android/gms/internal/zzji$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzji$zzb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzeg$zzd;->zza(Lcom/google/android/gms/internal/zzji$zzc;Lcom/google/android/gms/internal/zzji$zza;)V

    return-void
.end method

.method protected zzcl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzba;->zzsG:Z

    return v0
.end method
