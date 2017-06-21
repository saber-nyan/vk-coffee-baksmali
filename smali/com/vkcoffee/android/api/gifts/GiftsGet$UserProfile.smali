.class public Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;
.super Lcom/vkcoffee/android/UserProfile;
.source "GiftsGet.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/gifts/GiftsGet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserProfile"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public can_see_gifts:Z

.field public first_name_gen:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/UserProfile;-><init>(Landroid/os/Parcel;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;->can_see_gifts:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;->first_name_gen:Ljava/lang/String;

    .line 61
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 65
    const-string/jumbo v1, "can_see_gifts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;->can_see_gifts:Z

    .line 66
    const-string/jumbo v0, "first_name_gen"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;->first_name_gen:Ljava/lang/String;

    .line 67
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/UserProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    iget-boolean v0, p0, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;->can_see_gifts:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;->first_name_gen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
