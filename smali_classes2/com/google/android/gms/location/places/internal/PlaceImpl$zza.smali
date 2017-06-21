.class public Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/PlaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mVersionCode:I

.field private zzaPc:Lcom/google/android/gms/maps/model/LatLng;

.field private zzaPe:Ljava/lang/String;

.field private zzaPf:Landroid/net/Uri;

.field private zzaQA:Ljava/lang/String;

.field private zzaQB:Z

.field private zzaQC:F

.field private zzaQD:I

.field private zzaQE:J

.field private zzaQG:Ljava/lang/String;

.field private zzaQH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzaQK:Landroid/os/Bundle;

.field private zzaQL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzaQy:F

.field private zzaQz:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private zzawc:Ljava/lang/String;

.field private zzyv:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->mVersionCode:I

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaPc:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQz:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0
.end method

.method public zzan(Z)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQB:Z

    return-object p0
.end method

.method public zzem(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzyv:Ljava/lang/String;

    return-object p0
.end method

.method public zzen(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public zzeo(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzawc:Ljava/lang/String;

    return-object p0
.end method

.method public zzep(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaPe:Ljava/lang/String;

    return-object p0
.end method

.method public zzf(F)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQy:F

    return-object p0
.end method

.method public zzg(F)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQC:F

    return-object p0
.end method

.method public zzhX(I)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQD:I

    return-object p0
.end method

.method public zzo(Landroid/net/Uri;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaPf:Landroid/net/Uri;

    return-object p0
.end method

.method public zzx(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQL:Ljava/util/List;

    return-object p0
.end method

.method public zzy(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQH:Ljava/util/List;

    return-object p0
.end method

.method public zzzx()Lcom/google/android/gms/location/places/internal/PlaceImpl;
    .locals 30

    new-instance v5, Lcom/google/android/gms/location/places/internal/PlaceImpl;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->mVersionCode:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzyv:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQL:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQK:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzawc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaPe:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQG:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQH:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaPc:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQy:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQz:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQA:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaPf:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQB:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQC:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQD:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQE:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzawc:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaPe:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQG:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaQH:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v4, v0, v1, v2, v3}, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceLocalization;

    move-result-object v26

    invoke-direct/range {v5 .. v26}, Lcom/google/android/gms/location/places/internal/PlaceImpl;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJLcom/google/android/gms/location/places/internal/PlaceLocalization;)V

    return-object v5
.end method
