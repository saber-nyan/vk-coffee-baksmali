.class Lcom/google/android/gms/internal/zzdw$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdw$2;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic zzAf:Ljava/lang/String;

.field final synthetic zzAg:Lcom/google/android/gms/internal/zzdw$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdw$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdw$2$1;->zzAg:Lcom/google/android/gms/internal/zzdw$2;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdw$2$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdw$2$1;->zzAf:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzdx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzdx;->zzAq:Lcom/google/android/gms/ads/internal/client/zzw;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzdx;->zzAq:Lcom/google/android/gms/ads/internal/client/zzw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdw$2$1;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdw$2$1;->zzAf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzw;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
