.class Lcom/google/android/gms/internal/zzdw$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdw$3;->zza(Lcom/google/android/gms/internal/zzgc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzAh:Lcom/google/android/gms/internal/zzgc;

.field final synthetic zzAi:Lcom/google/android/gms/internal/zzdw$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdw$3;Lcom/google/android/gms/internal/zzgc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdw$3$1;->zzAi:Lcom/google/android/gms/internal/zzdw$3;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdw$3$1;->zzAh:Lcom/google/android/gms/internal/zzgc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzdx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzdx;->zzAr:Lcom/google/android/gms/internal/zzgd;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzdx;->zzAr:Lcom/google/android/gms/internal/zzgd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdw$3$1;->zzAh:Lcom/google/android/gms/internal/zzgc;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgd;->zza(Lcom/google/android/gms/internal/zzgc;)V

    :cond_0
    return-void
.end method
