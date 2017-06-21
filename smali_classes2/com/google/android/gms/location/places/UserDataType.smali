.class public final Lcom/google/android/gms/location/places/UserDataType;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/zzm;

.field public static final zzaPX:Lcom/google/android/gms/location/places/UserDataType;

.field public static final zzaPY:Lcom/google/android/gms/location/places/UserDataType;

.field public static final zzaPZ:Lcom/google/android/gms/location/places/UserDataType;

.field public static final zzaQa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/location/places/UserDataType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzJN:Ljava/lang/String;

.field final zzaQb:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "test_type"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/UserDataType;->zzy(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->zzaPX:Lcom/google/android/gms/location/places/UserDataType;

    const-string/jumbo v0, "labeled_place"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/UserDataType;->zzy(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->zzaPY:Lcom/google/android/gms/location/places/UserDataType;

    const-string/jumbo v0, "here_content"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/UserDataType;->zzy(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->zzaPZ:Lcom/google/android/gms/location/places/UserDataType;

    sget-object v0, Lcom/google/android/gms/location/places/UserDataType;->zzaPX:Lcom/google/android/gms/location/places/UserDataType;

    sget-object v1, Lcom/google/android/gms/location/places/UserDataType;->zzaPY:Lcom/google/android/gms/location/places/UserDataType;

    sget-object v2, Lcom/google/android/gms/location/places/UserDataType;->zzaPZ:Lcom/google/android/gms/location/places/UserDataType;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzmr;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->zzaQa:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/location/places/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->CREATOR:Lcom/google/android/gms/location/places/zzm;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "enumValue"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcM(Ljava/lang/String;)Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/location/places/UserDataType;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/UserDataType;->zzJN:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/location/places/UserDataType;->zzaQb:I

    return-void
.end method

.method private static zzy(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/UserDataType;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/location/places/UserDataType;-><init>(ILjava/lang/String;I)V

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
    instance-of v2, p1, Lcom/google/android/gms/location/places/UserDataType;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/UserDataType;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/location/places/UserDataType;->zzJN:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/UserDataType;->zzJN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/UserDataType;->zzaQb:I

    iget v3, p1, Lcom/google/android/gms/location/places/UserDataType;->zzaQb:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserDataType;->zzJN:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserDataType;->zzJN:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/zzm;->zza(Lcom/google/android/gms/location/places/UserDataType;Landroid/os/Parcel;I)V

    return-void
.end method
