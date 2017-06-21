.class Lcom/google/android/gms/ads/internal/zzf$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzjq$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzf;->zzd(Lcom/google/android/gms/internal/zzif;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzpF:Lcom/google/android/gms/internal/zzif;

.field final synthetic zzpG:Lcom/google/android/gms/ads/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzif;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzf$1;->zzpG:Lcom/google/android/gms/ads/internal/zzf;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzf$1;->zzpF:Lcom/google/android/gms/internal/zzif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbi()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf$1;->zzpG:Lcom/google/android/gms/ads/internal/zzf;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzf;->zzpl:Lcom/google/android/gms/internal/zzax;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf$1;->zzpG:Lcom/google/android/gms/ads/internal/zzf;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzf;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf$1;->zzpF:Lcom/google/android/gms/internal/zzif;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzax;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;)Lcom/google/android/gms/internal/zzau;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf$1;->zzpF:Lcom/google/android/gms/internal/zzif;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzau;->zza(Lcom/google/android/gms/internal/zzav;)V

    return-void
.end method
