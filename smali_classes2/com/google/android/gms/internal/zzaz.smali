.class public Lcom/google/android/gms/internal/zzaz;
.super Lcom/google/android/gms/internal/zzau;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final zzsE:Lcom/google/android/gms/internal/zzeh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzeh;)V
    .locals 2

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzau;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzbb;)V

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaz;->zzsE:Lcom/google/android/gms/internal/zzeh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaz;->zzsE:Lcom/google/android/gms/internal/zzeh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaz;->zzb(Lcom/google/android/gms/internal/zzeh;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaz;->zzcd()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaz;->zzh(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Tracking ad unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaz;->zzrZ:Lcom/google/android/gms/internal/zzaw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaw;->zzcu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaz;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzau;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaz;->zzsE:Lcom/google/android/gms/internal/zzeh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaz;->zzc(Lcom/google/android/gms/internal/zzeh;)V

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
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaz;->zzsE:Lcom/google/android/gms/internal/zzeh;

    const-string/jumbo v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/zzeh;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzcf()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaz;->destroy()V

    return-void
.end method

.method protected zzcl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
