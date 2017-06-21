.class public Lcom/vkcoffee/android/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/Image;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:I

.field public final url:Ljava/lang/String;

.field public final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/vkcoffee/android/Image$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/Image$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/Image;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/Image;->url:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/Image;->w:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/Image;->h:I

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/vkcoffee/android/Image;->url:Ljava/lang/String;

    .line 17
    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/vkcoffee/android/Image;->w:I

    .line 18
    if-nez p1, :cond_2

    :goto_2
    iput v1, p0, Lcom/vkcoffee/android/Image;->h:I

    .line 19
    return-void

    .line 16
    :cond_0
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_1
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 18
    :cond_2
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public toJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "o":Lorg/json/JSONObject;
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .restart local p1    # "o":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/vkcoffee/android/Image;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "width"

    iget v2, p0, Lcom/vkcoffee/android/Image;->w:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "height"

    iget v2, p0, Lcom/vkcoffee/android/Image;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/Image;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/vkcoffee/android/Image;->w:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/vkcoffee/android/Image;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    return-void
.end method
