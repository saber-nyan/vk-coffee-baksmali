.class public Lme/grishka/appkit/imageloader/FileImageDownloader;
.super Lme/grishka/appkit/imageloader/ImageDownloader;
.source "FileImageDownloader.java"


# instance fields
.field private cache:Lme/grishka/appkit/imageloader/ImageCache;


# direct methods
.method public constructor <init>(Lme/grishka/appkit/imageloader/ImageCache;)V
    .locals 0
    .param p1, "cache"    # Lme/grishka/appkit/imageloader/ImageCache;

    .prologue
    .line 18
    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ImageDownloader;-><init>()V

    .line 19
    iput-object p1, p0, Lme/grishka/appkit/imageloader/FileImageDownloader;->cache:Lme/grishka/appkit/imageloader/ImageCache;

    .line 20
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZLme/grishka/appkit/imageloader/ImageCache$RequestWrapper;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "decode"    # Z
    .param p3, "wrapper"    # Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    if-nez p2, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const/4 v3, 0x0

    .local v3, "maxW":I
    const/4 v2, 0x0

    .line 33
    .local v2, "maxH":I
    const-string/jumbo v5, "file://"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 34
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 35
    .local v4, "u":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 36
    const-string/jumbo v5, "max_w"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 37
    const-string/jumbo v5, "max_w"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 39
    :cond_1
    const-string/jumbo v5, "max_h"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 40
    const-string/jumbo v5, "max_h"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 43
    .end local v4    # "u":Landroid/net/Uri;
    :cond_2
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 44
    .local v1, "in":Ljava/io/InputStream;
    iget-object v5, p0, Lme/grishka/appkit/imageloader/FileImageDownloader;->cache:Lme/grishka/appkit/imageloader/ImageCache;

    invoke-virtual {v5, v1, v3, v2}, Lme/grishka/appkit/imageloader/ImageCache;->decodeImage(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public isFileBased()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method
