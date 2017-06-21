.class Lcom/google/android/gms/maps/StreetViewPanorama$4;
.super Lcom/google/android/gms/maps/internal/zzz$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/StreetViewPanorama;->setOnStreetViewPanoramaLongClickListener(Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaSt:Lcom/google/android/gms/maps/StreetViewPanorama;

.field final synthetic zzaSw:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanorama$4;->zzaSt:Lcom/google/android/gms/maps/StreetViewPanorama;

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanorama$4;->zzaSw:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzz$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreetViewPanoramaLongClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V
    .locals 1
    .param p1, "orientation"    # Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama$4;->zzaSw:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;->onStreetViewPanoramaLongClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V

    return-void
.end method
