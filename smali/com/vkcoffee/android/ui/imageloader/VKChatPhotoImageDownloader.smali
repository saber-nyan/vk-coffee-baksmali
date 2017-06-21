.class public Lcom/vkcoffee/android/ui/imageloader/VKChatPhotoImageDownloader;
.super Lme/grishka/appkit/imageloader/ImageDownloader;
.source "VKChatPhotoImageDownloader.java"


# instance fields
.field private cache:Lme/grishka/appkit/imageloader/ImageCache;


# direct methods
.method public constructor <init>(Lme/grishka/appkit/imageloader/ImageCache;)V
    .locals 0
    .param p1, "cache"    # Lme/grishka/appkit/imageloader/ImageCache;

    .prologue
    .line 24
    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ImageDownloader;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/vkcoffee/android/ui/imageloader/VKChatPhotoImageDownloader;->cache:Lme/grishka/appkit/imageloader/ImageCache;

    .line 26
    return-void
.end method

.method public static drawMultichatPhoto([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bmps"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 34
    array-length v6, p0

    if-ge v6, v11, :cond_1

    .line 35
    const/4 v0, 0x0

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 37
    :cond_1
    const/high16 v6, 0x42800000    # 64.0f

    sget v7, Lcom/vkcoffee/android/Global;->displayDensity:F

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 38
    .local v1, "bs":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 41
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 43
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, "rect1":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .local v5, "rect2":Landroid/graphics/Rect;
    array-length v6, p0

    if-ne v6, v11, :cond_2

    .line 45
    div-int/lit8 v6, v1, 0x2

    invoke-virtual {v4, v9, v9, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    aget-object v6, p0, v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    aget-object v7, p0, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    aget-object v8, p0, v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 47
    aget-object v6, p0, v9

    invoke-virtual {v2, v6, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 48
    div-int/lit8 v6, v1, 0x2

    invoke-virtual {v4, v6, v9, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 49
    aget-object v6, p0, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    aget-object v7, p0, v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    aget-object v8, p0, v10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 50
    aget-object v6, p0, v10

    invoke-virtual {v2, v6, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 51
    :cond_2
    array-length v6, p0

    if-ne v6, v8, :cond_3

    .line 52
    div-int/lit8 v6, v1, 0x2

    invoke-virtual {v4, v9, v9, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 53
    aget-object v6, p0, v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    aget-object v7, p0, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    aget-object v8, p0, v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 54
    aget-object v6, p0, v9

    invoke-virtual {v2, v6, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 55
    div-int/lit8 v6, v1, 0x2

    div-int/lit8 v7, v1, 0x2

    invoke-virtual {v4, v6, v9, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 56
    aget-object v6, p0, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    aget-object v7, p0, v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    aget-object v6, p0, v10

    invoke-virtual {v2, v6, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 58
    div-int/lit8 v6, v1, 0x2

    div-int/lit8 v7, v1, 0x2

    invoke-virtual {v4, v6, v7, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    aget-object v6, p0, v11

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    aget-object v7, p0, v11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    aget-object v6, p0, v11

    invoke-virtual {v2, v6, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 61
    :cond_3
    array-length v6, p0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 62
    div-int/lit8 v6, v1, 0x2

    div-int/lit8 v7, v1, 0x2

    invoke-virtual {v4, v9, v9, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    aget-object v6, p0, v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    aget-object v7, p0, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 64
    aget-object v6, p0, v9

    invoke-virtual {v2, v6, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 65
    div-int/lit8 v6, v1, 0x2

    div-int/lit8 v7, v1, 0x2

    invoke-virtual {v4, v9, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 66
    aget-object v6, p0, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    aget-object v7, p0, v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 67
    aget-object v6, p0, v10

    invoke-virtual {v2, v6, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 68
    div-int/lit8 v6, v1, 0x2

    div-int/lit8 v7, v1, 0x2

    invoke-virtual {v4, v6, v9, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 69
    aget-object v6, p0, v11

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    aget-object v7, p0, v11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 70
    aget-object v6, p0, v11

    invoke-virtual {v2, v6, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 71
    div-int/lit8 v6, v1, 0x2

    div-int/lit8 v7, v1, 0x2

    invoke-virtual {v4, v6, v7, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 72
    aget-object v6, p0, v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    aget-object v7, p0, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 73
    aget-object v6, p0, v8

    invoke-virtual {v2, v6, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZLme/grishka/appkit/imageloader/ImageCache$RequestWrapper;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "decode"    # Z
    .param p3, "wrapper"    # Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v3, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 82
    .local v4, "u":Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_0

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "photo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "p":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 90
    .end local v2    # "p":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Landroid/graphics/Bitmap;

    .line 91
    .local v0, "bmps":[Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 92
    iget-object v6, p0, Lcom/vkcoffee/android/ui/imageloader/VKChatPhotoImageDownloader;->cache:Lme/grishka/appkit/imageloader/ImageCache;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v0, v1

    .line 93
    aget-object v5, v0, v1

    if-nez v5, :cond_2

    .line 94
    const/4 v5, 0x0

    .line 97
    :goto_2
    return-object v5

    .line 88
    .end local v0    # "bmps":[Landroid/graphics/Bitmap;
    .restart local v2    # "p":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v2    # "p":Ljava/lang/String;
    .restart local v0    # "bmps":[Landroid/graphics/Bitmap;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    :cond_3
    invoke-static {v0}, Lcom/vkcoffee/android/ui/imageloader/VKChatPhotoImageDownloader;->drawMultichatPhoto([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_2
.end method

.method public isFileBased()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
