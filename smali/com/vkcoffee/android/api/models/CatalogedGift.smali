.class public Lcom/vkcoffee/android/api/models/CatalogedGift;
.super Lcom/vkcoffee/android/api/models/Model;
.source "CatalogedGift.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/api/models/CatalogedGift;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public description:Ljava/lang/String;

.field public disabled:Z

.field public gift:Lcom/vkcoffee/android/api/models/Gift;

.field public gifts_left:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public price:I

.field public price_str:Ljava/lang/String;

.field public real_price:I

.field public real_price_str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/vkcoffee/android/api/models/CatalogedGift$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/models/CatalogedGift$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/api/models/CatalogedGift;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 91
    const-class v0, Lcom/vkcoffee/android/api/models/Gift;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/models/Gift;

    iput-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->price:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->real_price:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->description:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->disabled:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->real_price_str:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->price_str:Ljava/lang/String;

    .line 99
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/api/models/CatalogedGift$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/api/models/CatalogedGift$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/models/CatalogedGift;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "source"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 32
    const-string/jumbo v4, "gift"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 33
    .local v1, "gift":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 34
    new-instance v4, Lcom/vkcoffee/android/api/models/Gift;

    invoke-direct {v4, v1}, Lcom/vkcoffee/android/api/models/Gift;-><init>(Lorg/json/JSONObject;)V

    iput-object v4, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    .line 36
    :cond_0
    const-string/jumbo v4, "price"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->price:I

    .line 39
    :try_start_0
    const-string/jumbo v4, "gifts_left"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    const-string/jumbo v4, "real_price"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->real_price:I

    .line 44
    const-string/jumbo v4, "description"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->description:Ljava/lang/String;

    .line 45
    const-string/jumbo v4, "real_price_str"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->real_price_str:Ljava/lang/String;

    .line 46
    const-string/jumbo v4, "price_str"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->price_str:Ljava/lang/String;

    .line 47
    const-string/jumbo v4, "disabled"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->disabled:Z

    .line 48
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    move v2, v3

    .line 47
    goto :goto_1
.end method


# virtual methods
.method public canGift()Z
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/vkcoffee/android/api/models/CatalogedGift;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/api/models/CatalogedGift;->isLimitExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    if-ne p0, p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 56
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/vkcoffee/android/api/models/CatalogedGift;

    .line 61
    .local v0, "that":Lcom/vkcoffee/android/api/models/CatalogedGift;
    iget-object v3, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget-object v4, v0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/api/models/Gift;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 62
    goto :goto_0

    .line 61
    :cond_4
    iget-object v3, v0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->price:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    .line 123
    iget v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->real_price:I

    .line 125
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->price:I

    goto :goto_0
.end method

.method public getPriceStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->price:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->real_price_str:Ljava/lang/String;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->price_str:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/models/Gift;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->disabled:Z

    return v0
.end method

.method public isFree()Z
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/vkcoffee/android/api/models/CatalogedGift;->getPrice()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLimitExpired()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->real_price:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStickerPack()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget-object v0, v0, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    iget v1, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->price:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v1, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 83
    iget v1, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->real_price:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v1, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->description:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-boolean v1, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->disabled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->real_price_str:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/CatalogedGift;->price_str:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return-void
.end method
