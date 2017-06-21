.class Lcom/google/android/gms/maps/GoogleMap$7;
.super Lcom/google/android/gms/maps/internal/zzf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnGroundOverlayClickListener(Lcom/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaRA:Lcom/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener;

.field final synthetic zzaRu:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$7;->zzaRu:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$7;->zzaRA:Lcom/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzf$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/maps/model/internal/zzc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$7;->zzaRA:Lcom/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener;

    new-instance v1, Lcom/google/android/gms/maps/model/GroundOverlay;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/GroundOverlay;-><init>(Lcom/google/android/gms/maps/model/internal/zzc;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener;->onGroundOverlayClick(Lcom/google/android/gms/maps/model/GroundOverlay;)V

    return-void
.end method
