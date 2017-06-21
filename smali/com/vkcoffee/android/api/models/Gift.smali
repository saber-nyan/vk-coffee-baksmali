.class public Lcom/vkcoffee/android/api/models/Gift;
.super Lcom/vkcoffee/android/api/models/Model;
.source "Gift.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/api/models/Gift;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:I

.field public stickers_product_id:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public thumb_256:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public thumb_48:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public thumb_96:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/vkcoffee/android/api/models/Gift$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/models/Gift$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/api/models/Gift;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/models/Gift;->id:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/models/Gift;->thumb_48:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/models/Gift;->thumb_96:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/models/Gift;->thumb_256:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/api/models/Gift$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/api/models/Gift$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/models/Gift;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "source"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 31
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/api/models/Gift;->id:I

    .line 32
    const-string/jumbo v1, "thumb_48"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/models/Gift;->thumb_48:Ljava/lang/String;

    .line 33
    const-string/jumbo v1, "thumb_96"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/models/Gift;->thumb_96:Ljava/lang/String;

    .line 34
    const-string/jumbo v1, "thumb_256"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/models/Gift;->thumb_256:Ljava/lang/String;

    .line 37
    :try_start_0
    const-string/jumbo v1, "stickers_product_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 63
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 66
    check-cast v0, Lcom/vkcoffee/android/api/models/Gift;

    .line 68
    .local v0, "gift":Lcom/vkcoffee/android/api/models/Gift;
    iget v3, p0, Lcom/vkcoffee/android/api/models/Gift;->id:I

    iget v4, v0, Lcom/vkcoffee/android/api/models/Gift;->id:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_4
    iget-object v3, p0, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 72
    goto :goto_0

    .line 71
    :cond_5
    iget-object v3, v0, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getImage(I)Ljava/lang/String;
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 86
    const/16 v0, 0x30

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Gift;->thumb_48:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x60

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Gift;->thumb_96:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Gift;->thumb_256:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 80
    iget v0, p0, Lcom/vkcoffee/android/api/models/Gift;->id:I

    .line 81
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 82
    return v0

    .line 81
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 50
    iget v0, p0, Lcom/vkcoffee/android/api/models/Gift;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Gift;->thumb_48:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Gift;->thumb_96:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Gift;->thumb_256:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 55
    return-void
.end method
