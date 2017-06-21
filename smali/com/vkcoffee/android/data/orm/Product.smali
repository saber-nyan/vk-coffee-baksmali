.class public abstract Lcom/vkcoffee/android/data/orm/Product;
.super Lcom/vkcoffee/android/api/models/Model;
.source "Product.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final REFERRER_KEYBOARD:Ljava/lang/String; = "keyboard"

.field public static final REFERRER_LINK:Ljava/lang/String; = "link"

.field public static final REFERRER_MESSAGE:Ljava/lang/String; = "message"

.field public static final REFERRER_STORE:Ljava/lang/String; = "store"


# instance fields
.field public active:Z
    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "active"
    .end annotation
.end field

.field public base_url:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "base_url"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        Id = true
        value = "id"
    .end annotation
.end field

.field public promoted:Z
    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "promoted"
    .end annotation
.end field

.field public purchase_date:J
    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "purchase_date"
    .end annotation
.end field

.field public purchased:Z
    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "purchased"
    .end annotation
.end field

.field public referrer:Ljava/lang/String;

.field public sticker_ids:[I
    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "stickers_ids"
    .end annotation
.end field

.field public stickers_base_url:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "stickers_base_url"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "title"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/orm/Product;->id:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/orm/Product;->type:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/data/orm/Product;->purchased:Z

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/vkcoffee/android/data/orm/Product;->active:Z

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/orm/Product;->promoted:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/data/orm/Product;->purchase_date:J

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/orm/Product;->title:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/orm/Product;->base_url:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/orm/Product;->stickers_base_url:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/orm/Product;->sticker_ids:[I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/orm/Product;->referrer:Ljava/lang/String;

    .line 158
    return-void

    :cond_0
    move v0, v2

    .line 149
    goto :goto_0

    :cond_1
    move v0, v2

    .line 150
    goto :goto_1

    :cond_2
    move v1, v2

    .line 151
    goto :goto_2
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "product"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/orm/Product;->parseProduct(Lorg/json/JSONObject;)V

    .line 71
    return-void
.end method

.method public static getReferrerSuggestion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "suggestion_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract afterPurchased(Lcom/vkcoffee/android/data/PurchasesManager$Result;)V
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    if-ne p0, p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 106
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 109
    check-cast v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 111
    .local v0, "that":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    iget v3, p0, Lcom/vkcoffee/android/data/orm/Product;->id:I

    iget v4, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public abstract getDeveloperPayload()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/vkcoffee/android/data/orm/Product;->id:I

    return v0
.end method

.method protected parseProduct(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "product"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 74
    const-string/jumbo v3, "id"

    iget v6, p0, Lcom/vkcoffee/android/data/orm/Product;->id:I

    invoke-virtual {p1, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/data/orm/Product;->id:I

    .line 75
    const-string/jumbo v3, "type"

    iget-object v6, p0, Lcom/vkcoffee/android/data/orm/Product;->type:Ljava/lang/String;

    invoke-virtual {p1, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/data/orm/Product;->type:Ljava/lang/String;

    .line 76
    const-string/jumbo v3, "title"

    iget-object v6, p0, Lcom/vkcoffee/android/data/orm/Product;->title:Ljava/lang/String;

    invoke-virtual {p1, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/data/orm/Product;->title:Ljava/lang/String;

    .line 77
    const-string/jumbo v3, "purchased"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/vkcoffee/android/data/orm/Product;->purchased:Z

    .line 78
    const-string/jumbo v3, "active"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/vkcoffee/android/data/orm/Product;->active:Z

    .line 79
    const-string/jumbo v3, "promoted"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    :goto_2
    iput-boolean v4, p0, Lcom/vkcoffee/android/data/orm/Product;->promoted:Z

    .line 80
    const-string/jumbo v3, "purchase_date"

    iget-wide v4, p0, Lcom/vkcoffee/android/data/orm/Product;->purchase_date:J

    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/vkcoffee/android/data/orm/Product;->purchase_date:J

    .line 81
    const-string/jumbo v3, "base_url"

    iget-object v4, p0, Lcom/vkcoffee/android/data/orm/Product;->base_url:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/data/orm/Product;->base_url:Ljava/lang/String;

    .line 82
    const-string/jumbo v3, "stickers"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 83
    .local v2, "stickers":Lorg/json/JSONObject;
    if-eqz v2, :cond_3

    .line 84
    const-string/jumbo v3, "base_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/data/orm/Product;->stickers_base_url:Ljava/lang/String;

    .line 85
    const-string/jumbo v3, "sticker_ids"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 86
    .local v1, "sticker_ids":Lorg/json/JSONArray;
    if-eqz v1, :cond_3

    .line 87
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/vkcoffee/android/data/orm/Product;->sticker_ids:[I

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 89
    iget-object v3, p0, Lcom/vkcoffee/android/data/orm/Product;->sticker_ids:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "sticker_ids":Lorg/json/JSONArray;
    .end local v2    # "stickers":Lorg/json/JSONObject;
    :cond_0
    move v3, v5

    .line 77
    goto :goto_0

    :cond_1
    move v3, v5

    .line 78
    goto :goto_1

    :cond_2
    move v4, v5

    .line 79
    goto :goto_2

    .line 93
    .restart local v2    # "stickers":Lorg/json/JSONObject;
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/Product;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    iget v0, p0, Lcom/vkcoffee/android/data/orm/Product;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/Product;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/orm/Product;->purchased:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 136
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/orm/Product;->active:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 137
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/orm/Product;->promoted:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 138
    iget-wide v0, p0, Lcom/vkcoffee/android/data/orm/Product;->purchase_date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/Product;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/Product;->base_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/Product;->stickers_base_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/Product;->sticker_ids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/Product;->referrer:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return-void

    :cond_0
    move v0, v2

    .line 135
    goto :goto_0

    :cond_1
    move v0, v2

    .line 136
    goto :goto_1

    :cond_2
    move v1, v2

    .line 137
    goto :goto_2

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/Product;->referrer:Ljava/lang/String;

    goto :goto_3
.end method
