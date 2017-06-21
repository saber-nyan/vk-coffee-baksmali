.class Lcom/google/android/gms/ads/internal/request/zzd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzji$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/zzd;->zzga()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzji$zzc",
        "<",
        "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzHn:Lcom/google/android/gms/ads/internal/request/zzj;

.field final synthetic zzHo:Lcom/google/android/gms/ads/internal/request/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/zzd;Lcom/google/android/gms/ads/internal/request/zzj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzHo:Lcom/google/android/gms/ads/internal/request/zzd;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzHn:Lcom/google/android/gms/ads/internal/request/zzj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzHo:Lcom/google/android/gms/ads/internal/request/zzd;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzHn:Lcom/google/android/gms/ads/internal/request/zzj;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/request/zzd;->zza(Lcom/google/android/gms/ads/internal/request/zzj;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzHo:Lcom/google/android/gms/ads/internal/request/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzgr()V

    :cond_0
    return-void
.end method

.method public synthetic zze(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzc(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    return-void
.end method
