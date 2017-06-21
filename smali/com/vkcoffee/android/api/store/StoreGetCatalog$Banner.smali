.class public Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;
.super Ljava/lang/Object;
.source "StoreGetCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/store/StoreGetCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Banner"
.end annotation


# instance fields
.field public photo_1280:Ljava/lang/String;

.field public photo_480:Ljava/lang/String;

.field public photo_640:Ljava/lang/String;

.field public photo_960:Ljava/lang/String;

.field public section:Ljava/lang/String;

.field public stock_item:Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public type:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "source"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;->parse(Ljava/lang/String;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->type:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    .line 51
    const-string/jumbo v1, "stock_item"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 52
    .local v0, "stock_item":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;-><init>(Lorg/json/JSONObject;I)V

    iput-object v1, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->stock_item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 55
    :cond_0
    const-string/jumbo v1, "section"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->section:Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "photo_480"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->photo_480:Ljava/lang/String;

    .line 57
    const-string/jumbo v1, "photo_640"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->photo_640:Ljava/lang/String;

    .line 58
    const-string/jumbo v1, "photo_960"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->photo_960:Ljava/lang/String;

    .line 59
    const-string/jumbo v1, "photo_1280"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->photo_1280:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getBannerImage()Ljava/lang/String;
    .locals 2

    .prologue
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 63
    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->photo_1280:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->photo_640:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->photo_960:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->photo_480:Ljava/lang/String;

    goto :goto_0
.end method
