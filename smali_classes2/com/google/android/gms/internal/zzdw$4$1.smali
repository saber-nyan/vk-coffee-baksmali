.class Lcom/google/android/gms/internal/zzdw$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdw$4;->zza(Lcom/google/android/gms/internal/zzce;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzAj:Lcom/google/android/gms/internal/zzce;

.field final synthetic zzAk:Lcom/google/android/gms/internal/zzdw$4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdw$4;Lcom/google/android/gms/internal/zzce;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdw$4$1;->zzAk:Lcom/google/android/gms/internal/zzdw$4;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdw$4$1;->zzAj:Lcom/google/android/gms/internal/zzce;

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

    iget-object v0, p1, Lcom/google/android/gms/internal/zzdx;->zzAs:Lcom/google/android/gms/internal/zzcf;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzdx;->zzAs:Lcom/google/android/gms/internal/zzcf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdw$4$1;->zzAj:Lcom/google/android/gms/internal/zzce;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcf;->zza(Lcom/google/android/gms/internal/zzce;)V

    :cond_0
    return-void
.end method
