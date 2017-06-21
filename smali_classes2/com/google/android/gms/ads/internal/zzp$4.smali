.class Lcom/google/android/gms/ads/internal/zzp$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzif;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzpF:Lcom/google/android/gms/internal/zzif;

.field final synthetic zzqC:Lcom/google/android/gms/ads/internal/zzp;

.field final synthetic zzqF:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzp;Ljava/lang/String;Lcom/google/android/gms/internal/zzif;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzp$4;->zzqC:Lcom/google/android/gms/ads/internal/zzp;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzp$4;->zzqF:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzp$4;->zzpF:Lcom/google/android/gms/internal/zzif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$4;->zzqC:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrC:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzp$4;->zzqF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzp$4;->zzpF:Lcom/google/android/gms/internal/zzif;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzif;->zzLa:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcu;->zza(Lcom/google/android/gms/internal/zzcp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
