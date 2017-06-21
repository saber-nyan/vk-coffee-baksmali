.class final Lcom/vkcoffee/android/api/models/GiftCategory$1;
.super Ljava/lang/Object;
.source "GiftCategory.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/models/GiftCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vkcoffee/android/api/models/GiftCategory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vkcoffee/android/api/models/GiftCategory;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 77
    new-instance v0, Lcom/vkcoffee/android/api/models/GiftCategory;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/api/models/GiftCategory;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/models/GiftCategory$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vkcoffee/android/api/models/GiftCategory;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkcoffee/android/api/models/GiftCategory;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 81
    new-array v0, p1, [Lcom/vkcoffee/android/api/models/GiftCategory;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/models/GiftCategory$1;->newArray(I)[Lcom/vkcoffee/android/api/models/GiftCategory;

    move-result-object v0

    return-object v0
.end method
