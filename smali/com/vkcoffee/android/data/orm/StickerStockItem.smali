.class public Lcom/vkcoffee/android/data/orm/StickerStockItem;
.super Lcom/vkcoffee/android/data/orm/Product;
.source "StickerStockItem.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;
.implements Lcom/vkcoffee/android/data/PurchasesManager$Product;


# annotations
.annotation runtime Lcom/vkcoffee/android/orm/Entity;
    inheritance = true
    value = "sticker_stock_items"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/data/orm/Product;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
        ">;",
        "Lcom/vkcoffee/android/data/PurchasesManager$Product;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public author:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "author"
    .end annotation
.end field

.field public background:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "background"
    .end annotation
.end field

.field public can_purchase:Z
    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "can_purchase"
    .end annotation
.end field

.field public compatMode:Z
    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "compat"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public demo_photos_560:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "demo_photos_560"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "description"
    .end annotation
.end field

.field public downloaded:Z
    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "downloaded"
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Index;
        value = "IND_STICKER_STOCK_ITEM_DOWNLOADED"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public free:Z
    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "free"
    .end annotation
.end field

.field public isNew:Z
    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "isNew"
    .end annotation
.end field

.field public merchant_product_id:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "merchant_product_id"
    .end annotation
.end field

.field public order:I
    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "user_order"
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Index;
        value = "IND_STICKER_STOCK_ITEM_ORDER"
    .end annotation
.end field

.field public payment_type:Lcom/vkcoffee/android/api/models/PaymentType;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "payment_type"
    .end annotation
.end field

.field public photo_140:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "photo_140"
    .end annotation
.end field

.field public photo_296:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "photo_296"
    .end annotation
.end field

.field public photo_35:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "photo_35"
    .end annotation
.end field

.field public photo_592:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "photo_592"
    .end annotation
.end field

.field public photo_70:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "photo_70"
    .end annotation
.end field

.field public price:I
    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "price"
    .end annotation
.end field

.field public price_str:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/vkcoffee/android/orm/Column;
        value = "price_str"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/vkcoffee/android/data/orm/StickerStockItem$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/orm/StickerStockItem$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/data/orm/Product;-><init>()V

    .line 112
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 208
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/data/orm/Product;-><init>(Landroid/os/Parcel;)V

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->description:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->author:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->can_purchase:Z

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->free:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 214
    .local v0, "tmpPayment_type":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    iput-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->payment_type:Lcom/vkcoffee/android/api/models/PaymentType;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->price:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->price_str:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->merchant_product_id:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_35:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_70:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_140:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_296:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_592:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->background:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->demo_photos_560:[Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->isNew:Z

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->downloaded:Z

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_5

    :goto_5
    iput-boolean v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->compatMode:Z

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->order:I

    .line 229
    return-void

    .end local v0    # "tmpPayment_type":I
    :cond_0
    move v1, v3

    .line 211
    goto :goto_0

    :cond_1
    move v1, v3

    .line 212
    goto :goto_1

    .line 214
    .restart local v0    # "tmpPayment_type":I
    :cond_2
    invoke-static {}, Lcom/vkcoffee/android/api/models/PaymentType;->values()[Lcom/vkcoffee/android/api/models/PaymentType;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_2

    :cond_3
    move v1, v3

    .line 225
    goto :goto_3

    :cond_4
    move v1, v3

    .line 226
    goto :goto_4

    :cond_5
    move v2, v3

    .line 227
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/data/orm/StickerStockItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/data/orm/StickerStockItem$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;I)V
    .locals 5
    .param p1, "source"    # Lorg/json/JSONObject;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 115
    const-string/jumbo v2, "product"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "product"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_0
    invoke-direct {p0, v2}, Lcom/vkcoffee/android/data/orm/Product;-><init>(Lorg/json/JSONObject;)V

    .line 116
    iput p2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->order:I

    .line 118
    const-string/jumbo v2, "description"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->description:Ljava/lang/String;

    .line 119
    const-string/jumbo v2, "author"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->author:Ljava/lang/String;

    .line 120
    const-string/jumbo v2, "can_purchase"

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->can_purchase:Z

    .line 121
    const-string/jumbo v2, "free"

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->free:Z

    .line 122
    const-string/jumbo v2, "new"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    :goto_3
    iput-boolean v3, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->isNew:Z

    .line 123
    const-string/jumbo v2, "merchant_product_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->merchant_product_id:Ljava/lang/String;

    .line 124
    const-string/jumbo v2, "payment_type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/api/models/PaymentType;->parse(Ljava/lang/String;)Lcom/vkcoffee/android/api/models/PaymentType;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->payment_type:Lcom/vkcoffee/android/api/models/PaymentType;

    .line 125
    const-string/jumbo v2, "price"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->price:I

    .line 126
    const-string/jumbo v2, "price_str"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->price_str:Ljava/lang/String;

    .line 127
    const-string/jumbo v2, "photo_35"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_35:Ljava/lang/String;

    .line 128
    const-string/jumbo v2, "photo_70"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_70:Ljava/lang/String;

    .line 129
    const-string/jumbo v2, "photo_140"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_140:Ljava/lang/String;

    .line 130
    const-string/jumbo v2, "photo_296"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_296:Ljava/lang/String;

    .line 131
    const-string/jumbo v2, "photo_592"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_592:Ljava/lang/String;

    .line 132
    const-string/jumbo v2, "background"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->background:Ljava/lang/String;

    .line 134
    const-string/jumbo v2, "demo_photos_560"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 135
    .local v0, "demo_photos_560":Lorg/json/JSONArray;
    if-eqz v0, :cond_4

    .line 136
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->demo_photos_560:[Ljava/lang/String;

    .line 137
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 138
    iget-object v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->demo_photos_560:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v0    # "demo_photos_560":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_0
    move-object v2, p1

    .line 115
    goto/16 :goto_0

    :cond_1
    move v2, v4

    .line 120
    goto/16 :goto_1

    :cond_2
    move v2, v4

    .line 121
    goto/16 :goto_2

    :cond_3
    move v3, v4

    .line 122
    goto/16 :goto_3

    .line 141
    .restart local v0    # "demo_photos_560":Lorg/json/JSONArray;
    :cond_4
    return-void
.end method

.method public static varargs adjustSize(I[I)I
    .locals 4
    .param p0, "size"    # I
    .param p1, "values"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 321
    const/4 v3, 0x0

    aget v1, p1, v3

    .line 322
    .local v1, "nextValue":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 323
    aget v2, p1, v0

    .line 324
    .local v2, "value":I
    if-gt p0, v2, :cond_0

    .line 331
    .end local v2    # "value":I
    :goto_1
    return v2

    .line 327
    .restart local v2    # "value":I
    :cond_0
    add-int/lit8 v3, v0, 0x1

    aget v1, p1, v3

    if-gt p0, v1, :cond_1

    .line 328
    add-int/lit8 v3, v0, 0x1

    aget v2, p1, v3

    goto :goto_1

    .line 322
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "value":I
    :cond_2
    move v2, v1

    .line 331
    goto :goto_1
.end method

.method public static getLocalPathBase()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/stickers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerStickerViewURL(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "id"    # I

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vkcoffee/android/stickers/StickersConfig;->STICKER_SIZE:I

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->adjustSize(I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "b.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x40
        0x80
        0x100
        0x160
        0x200
    .end array-data
.end method


# virtual methods
.method public afterPurchased(Lcom/vkcoffee/android/data/PurchasesManager$Result;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/data/PurchasesManager$Result;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->product:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->product:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->parseProduct(Lorg/json/JSONObject;)V

    .line 175
    :goto_0
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/stickers/Stickers;->purchase(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    .line 176
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->purchased:Z

    goto :goto_0
.end method

.method public compareTo(Lcom/vkcoffee/android/data/orm/StickerStockItem;)I
    .locals 2
    .param p1, "another"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 312
    iget v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->order:I

    iget v1, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->order:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->order:I

    iget v1, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->order:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    check-cast p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->compareTo(Lcom/vkcoffee/android/data/orm/StickerStockItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalBackgroundURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/background.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIconURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/icon.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalPathBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalStickerKeyboardURL(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalStickerViewURL(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_full.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalThumbURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/thumb.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMerchantProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->merchant_product_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentType()Lcom/vkcoffee/android/api/models/PaymentType;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->payment_type:Lcom/vkcoffee/android/api/models/PaymentType;

    return-object v0
.end method

.method public getPhoto(I)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 299
    const/16 v0, 0x46

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_140:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x23

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_70:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_35:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->price:I

    return v0
.end method

.method public getServerBackgroundURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getServerIconURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->base_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "thumb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_THUMB_SIZE:I

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->adjustSize(I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x22
        0x33
        0x44
        0x66
    .end array-data
.end method

.method public getServerStickerKeyboardURL(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->stickers_base_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vkcoffee/android/stickers/StickersConfig;->STICKER_KEYBOARD_SIZE:I

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->adjustSize(I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "b.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x40
        0x80
        0x100
        0x160
        0x200
    .end array-data
.end method

.method public getServerStickerViewURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->stickers_base_url:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerStickerViewURL(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerThumbURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_592:Ljava/lang/String;

    .line 263
    :goto_0
    return-object v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_296:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/high16 v0, 0x42880000    # 68.0f

    .line 263
    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getPhoto(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStickerPreviewUrl(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->stickers_base_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vkcoffee/android/stickers/StickersConfig;->PREVIEW_SIZE:I

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->adjustSize(I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "b.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x40
        0x80
        0x100
        0x160
        0x200
    .end array-data
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalThumbURL()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    .end local v0    # "url":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerThumbURL()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isFree()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->free:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/data/orm/Product;->writeToParcel(Landroid/os/Parcel;I)V

    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->can_purchase:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 189
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->free:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->payment_type:Lcom/vkcoffee/android/api/models/PaymentType;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->price:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->price_str:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->merchant_product_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_35:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_70:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_140:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_296:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->photo_592:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->background:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->demo_photos_560:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 201
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->isNew:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 202
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->downloaded:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 203
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->compatMode:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 204
    iget v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->order:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    return-void

    :cond_0
    move v0, v2

    .line 188
    goto :goto_0

    :cond_1
    move v0, v2

    .line 189
    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->payment_type:Lcom/vkcoffee/android/api/models/PaymentType;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/models/PaymentType;->ordinal()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v2

    .line 201
    goto :goto_3

    :cond_4
    move v0, v2

    .line 202
    goto :goto_4

    :cond_5
    move v1, v2

    .line 203
    goto :goto_5
.end method
