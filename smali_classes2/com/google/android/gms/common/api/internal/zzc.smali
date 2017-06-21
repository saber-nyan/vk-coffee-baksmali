.class public Lcom/google/android/gms/common/api/internal/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final zzagT:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzagU:I

.field private zzagV:Lcom/google/android/gms/common/api/internal/zzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzagT:Lcom/google/android/gms/common/api/Api;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzagU:I

    return-void
.end method

.method private zzpi()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzagV:Lcom/google/android/gms/common/api/internal/zzl;

    const-string/jumbo v1, "Callbacks must be attached to a GoogleApiClient instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "connectionHint"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzc;->zzpi()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzagV:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzl;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzc;->zzpi()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzagV:Lcom/google/android/gms/common/api/internal/zzl;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzagT:Lcom/google/android/gms/common/api/Api;

    iget v2, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzagU:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/zzl;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1
    .param p1, "cause"    # I

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzc;->zzpi()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzagV:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzl;->onConnectionSuspended(I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/internal/zzl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzagV:Lcom/google/android/gms/common/api/internal/zzl;

    return-void
.end method
