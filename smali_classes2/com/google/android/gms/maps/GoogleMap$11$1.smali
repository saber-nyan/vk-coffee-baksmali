.class Lcom/google/android/gms/maps/GoogleMap$11$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap$11;->activate(Lcom/google/android/gms/maps/internal/zzk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaRF:Lcom/google/android/gms/maps/internal/zzk;

.field final synthetic zzaRG:Lcom/google/android/gms/maps/GoogleMap$11;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap$11;Lcom/google/android/gms/maps/internal/zzk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$11$1;->zzaRG:Lcom/google/android/gms/maps/GoogleMap$11;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$11$1;->zzaRF:Lcom/google/android/gms/maps/internal/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$11$1;->zzaRF:Lcom/google/android/gms/maps/internal/zzk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/zzk;->zzd(Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
