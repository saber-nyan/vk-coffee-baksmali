.class public final Lcom/google/android/gms/maps/model/PointOfInterest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zzg;


# instance fields
.field private final mVersionCode:I

.field public final name:Ljava/lang/String;

.field public final zzaTG:Lcom/google/android/gms/maps/model/LatLng;

.field public final zzaTH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PointOfInterest;->CREATOR:Lcom/google/android/gms/maps/model/zzg;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "placeId"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/PointOfInterest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PointOfInterest;->zzaTG:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/PointOfInterest;->zzaTH:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/maps/model/PointOfInterest;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PointOfInterest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzg;->zza(Lcom/google/android/gms/maps/model/PointOfInterest;Landroid/os/Parcel;I)V

    return-void
.end method
