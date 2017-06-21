.class Lcom/vkcoffee/android/UserProfile$1;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vkcoffee/android/UserProfile;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 16
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/UserProfile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/UserProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkcoffee/android/UserProfile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 20
    new-array v0, p1, [Lcom/vkcoffee/android/UserProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/UserProfile$1;->newArray(I)[Lcom/vkcoffee/android/UserProfile;

    move-result-object v0

    return-object v0
.end method
