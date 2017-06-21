.class public Lcom/google/android/gms/location/places/personalized/PlaceAliasResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/personalized/PlaceAliasResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzUX:Lcom/google/android/gms/common/api/Status;

.field final zzaRf:Lcom/google/android/gms/location/places/personalized/PlaceUserData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/personalized/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/personalized/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAliasResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Lcom/google/android/gms/location/places/personalized/PlaceUserData;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "status"    # Lcom/google/android/gms/common/api/Status;
    .param p3, "placeUserData"    # Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/personalized/PlaceAliasResult;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/PlaceAliasResult;->zzUX:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/location/places/personalized/PlaceAliasResult;->zzaRf:Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceAliasResult;->zzUX:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/personalized/zzc;->zza(Lcom/google/android/gms/location/places/personalized/PlaceAliasResult;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzzC()Lcom/google/android/gms/location/places/personalized/PlaceUserData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceAliasResult;->zzaRf:Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    return-object v0
.end method
