.class Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;
.super Ljava/lang/Object;
.source "ImageLoaderThreadPool.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/imageloader/ImageLoaderThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderThreadFactory"
.end annotation


# instance fields
.field private num:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;->num:I

    return-void
.end method

.method synthetic constructor <init>(Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$1;)V
    .locals 0
    .param p1, "x0"    # Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$1;

    .prologue
    .line 38
    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;-><init>()V

    return-void
.end method

.method static synthetic access$104(Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;)I
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;

    .prologue
    .line 38
    iget v0, p0, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;->num:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;->num:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    new-instance v0, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory$1;

    invoke-direct {v0, p0, p1}, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory$1;-><init>(Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;Ljava/lang/Runnable;)V

    return-object v0
.end method
