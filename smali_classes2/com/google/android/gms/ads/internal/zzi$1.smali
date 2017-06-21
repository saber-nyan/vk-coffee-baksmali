.class Lcom/google/android/gms/ads/internal/zzi$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzi;->zzf(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzpW:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field final synthetic zzpX:Lcom/google/android/gms/ads/internal/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpW:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/ads/internal/zzi;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzi;->zzbm()Lcom/google/android/gms/ads/internal/zzp;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/ads/internal/zzi;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zzb(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/zzcr;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Lcom/google/android/gms/internal/zzcr;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zzc(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/zzcs;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Lcom/google/android/gms/internal/zzcs;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zzd(Lcom/google/android/gms/ads/internal/zzi;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zza(Landroid/support/v4/util/SimpleArrayMap;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zze(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/ads/internal/client/zzq;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zzf(Lcom/google/android/gms/ads/internal/zzi;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Landroid/support/v4/util/SimpleArrayMap;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zzg(Lcom/google/android/gms/ads/internal/zzi;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zza(Ljava/util/List;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zzh(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zzi(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/ads/internal/client/zzx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/ads/internal/client/zzx;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpW:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
