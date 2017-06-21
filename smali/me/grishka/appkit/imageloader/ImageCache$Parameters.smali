.class public Lme/grishka/appkit/imageloader/ImageCache$Parameters;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/imageloader/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation


# instance fields
.field public diskCacheSize:I

.field public memoryCacheSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    const/4 v0, 0x7

    iput v0, p0, Lme/grishka/appkit/imageloader/ImageCache$Parameters;->memoryCacheSize:I

    .line 524
    const/high16 v0, 0x1400000

    iput v0, p0, Lme/grishka/appkit/imageloader/ImageCache$Parameters;->diskCacheSize:I

    return-void
.end method
