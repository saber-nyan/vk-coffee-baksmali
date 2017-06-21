.class Lcom/google/android/gms/maps/GoogleMap$17;
.super Lcom/google/android/gms/maps/internal/zzh$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaRM:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

.field final synthetic zzaRu:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$17;->zzaRu:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$17;->zzaRM:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzh$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzh(Lcom/google/android/gms/maps/model/internal/zzf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$17;->zzaRM:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/zzf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method
