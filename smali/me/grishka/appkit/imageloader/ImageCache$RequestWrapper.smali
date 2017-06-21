.class public Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/imageloader/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestWrapper"
.end annotation


# instance fields
.field public call:Lcom/squareup/okhttp/Call;

.field private canceled:Z

.field public decode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;->decode:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;->canceled:Z

    .line 497
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;->call:Lcom/squareup/okhttp/Call;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;->call:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 499
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;->call:Lcom/squareup/okhttp/Call;

    .line 500
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;->canceled:Z

    return v0
.end method
