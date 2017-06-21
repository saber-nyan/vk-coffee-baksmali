.class Lcom/google/android/gms/maps/GoogleMap$11;
.super Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setLocationSource(Lcom/google/android/gms/maps/LocationSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaRE:Lcom/google/android/gms/maps/LocationSource;

.field final synthetic zzaRu:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/LocationSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$11;->zzaRu:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$11;->zzaRE:Lcom/google/android/gms/maps/LocationSource;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public activate(Lcom/google/android/gms/maps/internal/zzk;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/maps/internal/zzk;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$11;->zzaRE:Lcom/google/android/gms/maps/LocationSource;

    new-instance v1, Lcom/google/android/gms/maps/GoogleMap$11$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$11$1;-><init>(Lcom/google/android/gms/maps/GoogleMap$11;Lcom/google/android/gms/maps/internal/zzk;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/LocationSource;->activate(Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;)V

    return-void
.end method

.method public deactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$11;->zzaRE:Lcom/google/android/gms/maps/LocationSource;

    invoke-interface {v0}, Lcom/google/android/gms/maps/LocationSource;->deactivate()V

    return-void
.end method
