.class public abstract Lme/grishka/appkit/imageloader/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFile(Ljava/lang/String;Ljava/io/OutputStream;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/io/OutputStream;
    .param p3, "callback"    # Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;
    .param p4, "wrapper"    # Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap(Ljava/lang/String;ZLme/grishka/appkit/imageloader/ImageCache$RequestWrapper;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "decode"    # Z
    .param p3, "wrapper"    # Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isFileBased()Z
.end method
