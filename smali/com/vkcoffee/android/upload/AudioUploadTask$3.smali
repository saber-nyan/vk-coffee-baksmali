.class final Lcom/vkcoffee/android/upload/AudioUploadTask$3;
.super Ljava/lang/Object;
.source "AudioUploadTask.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/upload/AudioUploadTask;
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
        "Lcom/vkcoffee/android/upload/AudioUploadTask;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vkcoffee/android/upload/AudioUploadTask;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 119
    new-instance v0, Lcom/vkcoffee/android/upload/AudioUploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vkcoffee/android/upload/AudioUploadTask;-><init>(Landroid/os/Parcel;Lcom/vkcoffee/android/upload/AudioUploadTask$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/upload/AudioUploadTask$3;->createFromParcel(Landroid/os/Parcel;)Lcom/vkcoffee/android/upload/AudioUploadTask;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkcoffee/android/upload/AudioUploadTask;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 123
    new-array v0, p1, [Lcom/vkcoffee/android/upload/AudioUploadTask;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/upload/AudioUploadTask$3;->newArray(I)[Lcom/vkcoffee/android/upload/AudioUploadTask;

    move-result-object v0

    return-object v0
.end method
