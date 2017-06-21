.class public Lme/grishka/appkit/imageloader/MergeImageLoaderAdapter;
.super Ljava/lang/Object;
.source "MergeImageLoaderAdapter.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;


# instance fields
.field private pieces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/imageloader/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public addAdapter(Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    .prologue
    .line 16
    iget-object v0, p0, Lme/grishka/appkit/imageloader/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 21
    const/4 v1, 0x0

    .line 23
    .local v1, "total":I
    iget-object v2, p0, Lme/grishka/appkit/imageloader/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    .line 24
    .local v0, "piece":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;->getCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 25
    goto :goto_0

    .line 27
    .end local v0    # "piece":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    :cond_0
    return v1
.end method

.method public getImageCountForItem(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 32
    iget-object v2, p0, Lme/grishka/appkit/imageloader/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    .line 33
    .local v0, "piece":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;->getCount()I

    move-result v1

    .line 35
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    .line 36
    invoke-interface {v0, p1}, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v2

    .line 41
    .end local v0    # "piece":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .end local v1    # "size":I
    :goto_1
    return v2

    .line 39
    .restart local v0    # "piece":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .restart local v1    # "size":I
    :cond_0
    sub-int/2addr p1, v1

    .line 40
    goto :goto_0

    .line 41
    .end local v0    # "piece":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .end local v1    # "size":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 46
    iget-object v2, p0, Lme/grishka/appkit/imageloader/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    .line 47
    .local v0, "piece":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;->getCount()I

    move-result v1

    .line 49
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    .line 50
    invoke-interface {v0, p1, p2}, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v2

    .line 55
    .end local v0    # "piece":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .end local v1    # "size":I
    :goto_1
    return-object v2

    .line 53
    .restart local v0    # "piece":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .restart local v1    # "size":I
    :cond_0
    sub-int/2addr p1, v1

    .line 54
    goto :goto_0

    .line 55
    .end local v0    # "piece":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .end local v1    # "size":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    move v0, p1

    .line 61
    .local v0, "_pos":I
    iget-object v3, p0, Lme/grishka/appkit/imageloader/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    .line 62
    .local v1, "piece":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    invoke-interface {v1}, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;->getCount()I

    move-result v2

    .line 64
    .local v2, "size":I
    if-ge p1, v2, :cond_1

    .line 66
    invoke-interface {v1, v0, p2, p3}, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V

    .line 72
    .end local v1    # "piece":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .end local v2    # "size":I
    :cond_0
    return-void

    .line 70
    .restart local v1    # "piece":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .restart local v2    # "size":I
    :cond_1
    sub-int/2addr p1, v2

    .line 71
    goto :goto_0
.end method
