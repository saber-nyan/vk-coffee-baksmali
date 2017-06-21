.class Lcom/google/android/gms/ads/internal/zzp$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/ads/internal/formats/zze;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzqC:Lcom/google/android/gms/ads/internal/zzp;

.field final synthetic zzqE:Lcom/google/android/gms/ads/internal/formats/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzp;Lcom/google/android/gms/ads/internal/formats/zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzp$3;->zzqC:Lcom/google/android/gms/ads/internal/zzp;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzp$3;->zzqE:Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$3;->zzqC:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrA:Lcom/google/android/gms/internal/zzcs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzp$3;->zzqE:Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcs;->zza(Lcom/google/android/gms/internal/zzcn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not call OnContentAdLoadedListener.onContentAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
