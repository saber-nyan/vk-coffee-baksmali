.class Lcom/google/android/gms/ads/internal/request/zzm$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/zzm;->zzbr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzID:Lcom/google/android/gms/ads/internal/request/zzm;

.field final synthetic zzps:Lcom/google/android/gms/internal/zzif$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/zzm;Lcom/google/android/gms/internal/zzif$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzm$1;->zzID:Lcom/google/android/gms/ads/internal/request/zzm;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzm$1;->zzps:Lcom/google/android/gms/internal/zzif$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzm$1;->zzID:Lcom/google/android/gms/ads/internal/request/zzm;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/zzm;->zza(Lcom/google/android/gms/ads/internal/request/zzm;)Lcom/google/android/gms/ads/internal/request/zza$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzm$1;->zzps:Lcom/google/android/gms/internal/zzif$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/request/zza$zza;->zza(Lcom/google/android/gms/internal/zzif$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzm$1;->zzID:Lcom/google/android/gms/ads/internal/request/zzm;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/zzm;->zzb(Lcom/google/android/gms/ads/internal/request/zzm;)Lcom/google/android/gms/internal/zzeg$zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzm$1;->zzID:Lcom/google/android/gms/ads/internal/request/zzm;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/zzm;->zzb(Lcom/google/android/gms/ads/internal/request/zzm;)Lcom/google/android/gms/internal/zzeg$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg$zzd;->release()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzm$1;->zzID:Lcom/google/android/gms/ads/internal/request/zzm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/request/zzm;->zza(Lcom/google/android/gms/ads/internal/request/zzm;Lcom/google/android/gms/internal/zzeg$zzd;)Lcom/google/android/gms/internal/zzeg$zzd;

    :cond_0
    return-void
.end method
