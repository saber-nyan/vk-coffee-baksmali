.class final Lcom/vkcoffee/android/AudioFile$1;
.super Ljava/lang/Object;
.source "AudioFile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AudioFile;
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
        "Lcom/vkcoffee/android/AudioFile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vkcoffee/android/AudioFile;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 93
    new-instance v0, Lcom/vkcoffee/android/AudioFile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vkcoffee/android/AudioFile;-><init>(Landroid/os/Parcel;Lcom/vkcoffee/android/AudioFile$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/AudioFile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkcoffee/android/AudioFile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 97
    new-array v0, p1, [Lcom/vkcoffee/android/AudioFile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/AudioFile$1;->newArray(I)[Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    return-object v0
.end method
