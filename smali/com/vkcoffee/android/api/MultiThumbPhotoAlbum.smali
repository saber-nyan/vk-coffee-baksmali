.class public Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;
.super Lcom/vkcoffee/android/api/PhotoAlbum;
.source "MultiThumbPhotoAlbum.java"


# instance fields
.field public thumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vkcoffee/android/api/PhotoAlbum;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;->thumbs:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/PhotoAlbum;-><init>(Landroid/os/Parcel;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;->thumbs:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "ja"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/PhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;->thumbs:Ljava/util/ArrayList;

    .line 24
    const/16 v2, 0x6d

    .line 25
    .local v2, "size":C
    sget v5, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 26
    const/16 v2, 0x71

    .line 33
    :cond_0
    :goto_0
    :try_start_0
    const-string/jumbo v5, "last_photos"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 34
    .local v4, "xthumbs":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 35
    new-instance v1, Lcom/vkcoffee/android/Photo;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/vkcoffee/android/Photo;-><init>(Lorg/json/JSONObject;)V

    .line 36
    .local v1, "photo":Lcom/vkcoffee/android/Photo;
    iget-object v5, p0, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;->thumbs:Ljava/util/ArrayList;

    const/16 v6, 0x6d

    invoke-virtual {v1, v2, v6}, Lcom/vkcoffee/android/Photo;->getImage(CC)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v6

    iget-object v6, v6, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    .end local v0    # "i":I
    .end local v1    # "photo":Lcom/vkcoffee/android/Photo;
    .end local v4    # "xthumbs":Lorg/json/JSONArray;
    :cond_1
    sget v5, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x3fc00000    # 1.5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 28
    const/16 v2, 0x70

    goto :goto_0

    .line 29
    :cond_2
    sget v5, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 30
    const/16 v2, 0x6f

    goto :goto_0

    .line 38
    :catch_0
    move-exception v3

    .line 39
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    const-string/jumbo v6, "Error parsing ext thumbs"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .end local v3    # "x":Ljava/lang/Exception;
    :cond_3
    return-void
.end method
