.class Lcom/google/android/gms/maps/GoogleMap$2;
.super Lcom/google/android/gms/maps/internal/zzi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowCloseListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaRu:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic zzaRv:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$2;->zzaRu:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$2;->zzaRv:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzi$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/maps/model/internal/zzf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$2;->zzaRv:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/zzf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener;->onInfoWindowClose(Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method
