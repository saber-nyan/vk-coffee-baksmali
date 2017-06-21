.class Lcom/google/android/gms/internal/zzdw$3;
.super Lcom/google/android/gms/internal/zzgd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdw;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzAc:Lcom/google/android/gms/internal/zzdw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdw$3;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgd$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzgc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw$3;->zzAc:Lcom/google/android/gms/internal/zzdw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdw;->zza(Lcom/google/android/gms/internal/zzdw;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdw$3$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzdw$3$1;-><init>(Lcom/google/android/gms/internal/zzdw$3;Lcom/google/android/gms/internal/zzgc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
