.class public Lme/grishka/appkit/imageloader/ContentImageDownloader;
.super Lme/grishka/appkit/imageloader/ImageDownloader;
.source "ContentImageDownloader.java"


# instance fields
.field private cache:Lme/grishka/appkit/imageloader/ImageCache;


# direct methods
.method public constructor <init>(Lme/grishka/appkit/imageloader/ImageCache;)V
    .locals 0
    .param p1, "cache"    # Lme/grishka/appkit/imageloader/ImageCache;

    .prologue
    .line 16
    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ImageDownloader;-><init>()V

    .line 17
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ContentImageDownloader;->cache:Lme/grishka/appkit/imageloader/ImageCache;

    .line 18
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZLme/grishka/appkit/imageloader/ImageCache$RequestWrapper;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "decode"    # Z
    .param p3, "wrapper"    # Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 27
    if-nez p2, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 30
    :cond_0
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ContentImageDownloader;->cache:Lme/grishka/appkit/imageloader/ImageCache;

    invoke-virtual {v2}, Lme/grishka/appkit/imageloader/ImageCache;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 31
    .local v1, "in":Ljava/io/InputStream;
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ContentImageDownloader;->cache:Lme/grishka/appkit/imageloader/ImageCache;

    invoke-virtual {v2, v1, v4, v4}, Lme/grishka/appkit/imageloader/ImageCache;->decodeImage(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 32
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public isFileBased()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method
