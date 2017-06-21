.class Lcom/google/android/gms/maps/GoogleMap$4;
.super Lcom/google/android/gms/maps/internal/zzs$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaRu:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic zzaRx:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$4;->zzaRu:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$4;->zzaRx:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzs$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzq(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap$4;->zzaRx:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-interface {v1, v0}, Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    return-void
.end method
