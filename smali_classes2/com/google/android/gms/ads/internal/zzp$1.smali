.class Lcom/google/android/gms/ads/internal/zzp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzcb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzps:Lcom/google/android/gms/internal/zzif$zza;

.field final synthetic zzqC:Lcom/google/android/gms/ads/internal/zzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzp;Lcom/google/android/gms/internal/zzif$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzp$1;->zzqC:Lcom/google/android/gms/ads/internal/zzp;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzp$1;->zzps:Lcom/google/android/gms/internal/zzif$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzp$1;->zzqC:Lcom/google/android/gms/ads/internal/zzp;

    new-instance v0, Lcom/google/android/gms/internal/zzif;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzp$1;->zzps:Lcom/google/android/gms/internal/zzif$zza;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzif;-><init>(Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzen;Lcom/google/android/gms/internal/zzey;Ljava/lang/String;Lcom/google/android/gms/internal/zzeq;Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V

    invoke-virtual {v8, v0}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Lcom/google/android/gms/internal/zzif;)V

    return-void
.end method
