.class public final Lcom/google/android/gms/location/LocationSettingsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/LocationSettingsRequest$1;,
        Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzaBm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaOf:Z

.field private final zzaOg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationSettingsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;ZZ)V
    .locals 0
    .param p1, "version"    # I
    .param p3, "alwaysShow"    # Z
    .param p4, "needBle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p2, "locationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/LocationRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzaBm:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzaOf:Z

    iput-boolean p4, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzaOg:Z

    return-void
.end method

.method private constructor <init>(Ljava/util/List;ZZ)V
    .locals 1
    .param p2, "alwaysShow"    # Z
    .param p3, "needBle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "locationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/LocationRequest;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(ILjava/util/List;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;ZZLcom/google/android/gms/location/LocationSettingsRequest$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/google/android/gms/location/LocationSettingsRequest$1;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(Ljava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/zzf;->zza(Lcom/google/android/gms/location/LocationSettingsRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzuZ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzaBm:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzyK()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzaOf:Z

    return v0
.end method

.method public zzyL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzaOg:Z

    return v0
.end method
