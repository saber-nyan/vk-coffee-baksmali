.class public Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zzm;


# instance fields
.field public final bearing:F

.field private final mVersionCode:I

.field public final tilt:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->CREATOR:Lcom/google/android/gms/maps/model/zzm;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "tilt"    # F
    .param p2, "bearing"    # F

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;-><init>(IFF)V

    return-void
.end method

.method constructor <init>(IFF)V
    .locals 5
    .param p1, "versionCode"    # I
    .param p2, "tilt"    # F
    .param p3, "bearing"    # F

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Tilt needs to be between -90 and 90 inclusive"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->mVersionCode:I

    const/4 v0, 0x0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    float-to-double v0, p3

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    rem-float v0, p3, v4

    add-float p3, v0, v4

    .end local p3    # "bearing":F
    :cond_0
    rem-float v0, p3, v4

    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    return-void

    .restart local p3    # "bearing":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static builder()Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;
    .locals 1
    .param p0, "orientation"    # Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    .prologue
    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;-><init>(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    const-string/jumbo v1, "tilt"

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "bearing"

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzm;->zza(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;Landroid/os/Parcel;I)V

    return-void
.end method
