.class public Lcom/google/android/gms/internal/zzdp;
.super Lcom/google/android/gms/internal/zzim;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field final zzpD:Lcom/google/android/gms/internal/zzjp;

.field final zzzJ:Lcom/google/android/gms/internal/zzdr;

.field private final zzzK:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzdr;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzim;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdp;->zzpD:Lcom/google/android/gms/internal/zzjp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdp;->zzzJ:Lcom/google/android/gms/internal/zzdr;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdp;->zzzK:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbR()Lcom/google/android/gms/internal/zzdq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzdq;->zza(Lcom/google/android/gms/internal/zzdp;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdp;->zzzJ:Lcom/google/android/gms/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdr;->abort()V

    return-void
.end method

.method public zzbr()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdp;->zzzJ:Lcom/google/android/gms/internal/zzdr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdp;->zzzK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdr;->zzU(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdp$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdp$1;-><init>(Lcom/google/android/gms/internal/zzdp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzdp$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzdp$1;-><init>(Lcom/google/android/gms/internal/zzdp;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
