.class final Lcom/vkcoffee/android/Link$1;
.super Ljava/lang/Object;
.source "Link.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/Link;
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
        "Lcom/vkcoffee/android/Link;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vkcoffee/android/Link;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 73
    new-instance v0, Lcom/vkcoffee/android/Link;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/Link;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/Link$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vkcoffee/android/Link;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkcoffee/android/Link;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 77
    new-array v0, p1, [Lcom/vkcoffee/android/Link;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/Link$1;->newArray(I)[Lcom/vkcoffee/android/Link;

    move-result-object v0

    return-object v0
.end method
