.class Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;
.super Ljava/lang/Object;
.source "ViewImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/imageloader/ViewImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadTask"
.end annotation


# instance fields
.field public animate:Z

.field private canceled:Z

.field private localPath:Ljava/lang/String;

.field private reqWrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

.field public target:Lme/grishka/appkit/imageloader/ViewImageLoader$Target;

.field public url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->canceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lme/grishka/appkit/imageloader/ViewImageLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lme/grishka/appkit/imageloader/ViewImageLoader$1;

    .prologue
    .line 121
    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->localPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;)Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    .prologue
    .line 121
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->reqWrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;)Z
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    .prologue
    .line 121
    iget-boolean v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->canceled:Z

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->canceled:Z

    .line 132
    new-instance v0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$1;

    invoke-direct {v0, p0}, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$1;-><init>(Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;)V

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool;->enqueueCancellation(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 145
    :try_start_0
    iget-boolean v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->canceled:Z

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    new-instance v0, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    invoke-direct {v0}, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->reqWrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    .line 149
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->target:Lme/grishka/appkit/imageloader/ViewImageLoader$Target;

    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ViewImageLoader$Target;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->url:Ljava/lang/String;

    iget-object v2, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->localPath:Ljava/lang/String;

    iget-object v3, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->reqWrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 150
    .local v6, "bmp":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->reqWrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    .line 151
    if-eqz v6, :cond_0

    iget-boolean v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->canceled:Z

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Lme/grishka/appkit/imageloader/ViewImageLoader;->access$400()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$2;

    invoke-direct {v1, p0, v6}, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$2;-><init>(Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    goto :goto_0
.end method
