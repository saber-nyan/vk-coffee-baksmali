.class Lcom/google/android/gms/maps/GoogleMap$8;
.super Lcom/google/android/gms/maps/internal/zzu$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnPolygonClickListener(Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaRB:Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;

.field final synthetic zzaRu:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$8;->zzaRu:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$8;->zzaRB:Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzu$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/maps/model/internal/zzg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$8;->zzaRB:Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Polygon;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Polygon;-><init>(Lcom/google/android/gms/maps/model/internal/zzg;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;->onPolygonClick(Lcom/google/android/gms/maps/model/Polygon;)V

    return-void
.end method
