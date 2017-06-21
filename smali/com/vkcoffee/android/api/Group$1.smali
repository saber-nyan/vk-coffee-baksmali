.class Lcom/vkcoffee/android/api/Group$1;
.super Ljava/lang/Object;
.source "Group.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/Group;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vkcoffee/android/api/Group;
    .locals 1
    .param p1, "var1"    # Landroid/os/Parcel;

    .prologue
    .line 28
    new-instance v0, Lcom/vkcoffee/android/api/Group;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/api/Group;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/Group$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vkcoffee/android/api/Group;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkcoffee/android/api/Group;
    .locals 1
    .param p1, "var1"    # I

    .prologue
    .line 31
    new-array v0, p1, [Lcom/vkcoffee/android/api/Group;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/Group$1;->newArray(I)[Lcom/vkcoffee/android/api/Group;

    move-result-object v0

    return-object v0
.end method
