.class public final Lcom/google/android/gms/location/places/NearbyAlertRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/zze;


# instance fields
.field private mPriority:I

.field private final mVersionCode:I

.field private final zzaNC:I

.field private final zzaPr:I

.field private final zzaPs:Lcom/google/android/gms/location/places/PlaceFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzaPt:Lcom/google/android/gms/location/places/NearbyAlertFilter;

.field private final zzaPu:Z

.field private final zzaPv:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/zze;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->CREATOR:Lcom/google/android/gms/location/places/zze;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/NearbyAlertFilter;ZII)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "transitionTypes"    # I
    .param p3, "loiteringTimeMillis"    # I
    .param p4, "placeFilter"    # Lcom/google/android/gms/location/places/PlaceFilter;
    .param p5, "nearbyAlertFilter"    # Lcom/google/android/gms/location/places/NearbyAlertFilter;
    .param p6, "isDebugInfoRequested"    # Z
    .param p7, "radiusType"    # I
    .param p8, "priority"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x6e

    iput v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->mPriority:I

    iput p1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaNC:I

    iput p3, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPr:I

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPt:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPs:Lcom/google/android/gms/location/places/PlaceFilter;

    iput-boolean p6, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPu:Z

    iput p7, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPv:I

    iput p8, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->mPriority:I

    return-void

    :cond_0
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceIds()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceIds()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zzh(Ljava/util/Collection;)Lcom/google/android/gms/location/places/NearbyAlertFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPt:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceTypes()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zzi(Ljava/util/Collection;)Lcom/google/android/gms/location/places/NearbyAlertFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPt:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPt:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    goto :goto_0

    :cond_3
    iput-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPt:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;

    .end local p1    # "object":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaNC:I

    iget v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaNC:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPr:I

    iget v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPr:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPt:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    iget-object v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPt:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->mPriority:I

    iget v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->mPriority:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->mPriority:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaNC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPt:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "transitionTypes"

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaNC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "loiteringTimeMillis"

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "nearbyAlertFilter"

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPt:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "priority"

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/zze;->zza(Lcom/google/android/gms/location/places/NearbyAlertRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzyV()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaNC:I

    return v0
.end method

.method public zzyY()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPr:I

    return v0
.end method

.method public zzyZ()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzza()Lcom/google/android/gms/location/places/NearbyAlertFilter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPt:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    return-object v0
.end method

.method public zzzb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPu:Z

    return v0
.end method

.method public zzzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaPv:I

    return v0
.end method
