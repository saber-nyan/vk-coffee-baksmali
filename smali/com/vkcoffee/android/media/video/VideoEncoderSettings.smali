.class public Lcom/vkcoffee/android/media/video/VideoEncoderSettings;
.super Ljava/lang/Object;
.source "VideoEncoderSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/media/video/VideoEncoderSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final p480:Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

.field public static final p720:Lcom/vkcoffee/android/media/video/VideoEncoderSettings;


# instance fields
.field private bitrate:I

.field private shorterLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    new-instance v0, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

    const/16 v1, 0x1e0

    const v2, 0xf4240

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;-><init>(II)V

    sput-object v0, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->p480:Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

    .line 8
    new-instance v0, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

    const/16 v1, 0x2d0

    const v2, 0x2625a0

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;-><init>(II)V

    sput-object v0, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->p720:Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

    .line 43
    new-instance v0, Lcom/vkcoffee/android/media/video/VideoEncoderSettings$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/media/video/VideoEncoderSettings$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "shorterLength"    # I
    .param p2, "bitrate"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->shorterLength:I

    .line 15
    iput p2, p0, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->bitrate:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->shorterLength:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->bitrate:I

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getBitrate()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->bitrate:I

    return v0
.end method

.method public getShorterLength()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->shorterLength:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    iget v0, p0, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->shorterLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->bitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    return-void
.end method
