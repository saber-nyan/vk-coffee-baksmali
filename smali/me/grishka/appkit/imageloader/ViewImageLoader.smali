.class public Lme/grishka/appkit/imageloader/ViewImageLoader;
.super Ljava/lang/Object;
.source "ViewImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;,
        Lme/grishka/appkit/imageloader/ViewImageLoader$ImageViewTarget;,
        Lme/grishka/appkit/imageloader/ViewImageLoader$Target;
    }
.end annotation


# static fields
.field private static uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lme/grishka/appkit/imageloader/ViewImageLoader;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lme/grishka/appkit/imageloader/ViewImageLoader;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static cancel(Landroid/view/View;)V
    .locals 3
    .param p0, "target"    # Landroid/view/View;

    .prologue
    .line 82
    sget v1, Lme/grishka/appkit/R$id;->tag_image_load_task:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    .line 83
    .local v0, "prevTask":Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->cancel()V

    .line 85
    sget v1, Lme/grishka/appkit/R$id;->tag_image_load_task:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 87
    :cond_0
    return-void
.end method

.method public static load(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Lme/grishka/appkit/imageloader/ViewImageLoader$ImageViewTarget;

    invoke-direct {v0, p0}, Lme/grishka/appkit/imageloader/ViewImageLoader$ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    invoke-static {v0, p1, p2}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static load(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "localPath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "animate"    # Z

    .prologue
    .line 37
    new-instance v0, Lme/grishka/appkit/imageloader/ViewImageLoader$ImageViewTarget;

    invoke-direct {v0, p0}, Lme/grishka/appkit/imageloader/ViewImageLoader$ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    invoke-static {v0, p1, p2, p3, p4}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public static load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .param p0, "target"    # Lme/grishka/appkit/imageloader/ViewImageLoader$Target;
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    .line 30
    return-void
.end method

.method public static load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "target"    # Lme/grishka/appkit/imageloader/ViewImageLoader$Target;
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "localPath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "animate"    # Z

    .prologue
    .line 41
    invoke-interface {p0}, Lme/grishka/appkit/imageloader/ViewImageLoader$Target;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lme/grishka/appkit/imageloader/ViewImageLoader;->cancel(Landroid/view/View;)V

    .line 43
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lme/grishka/appkit/imageloader/ViewImageLoader$Target;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v1

    invoke-virtual {v1, p3}, Lme/grishka/appkit/imageloader/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-interface {p0}, Lme/grishka/appkit/imageloader/ViewImageLoader$Target;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v1

    invoke-virtual {v1, p3}, Lme/grishka/appkit/imageloader/ImageCache;->getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p0, v1}, Lme/grishka/appkit/imageloader/ViewImageLoader$Target;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-interface {p0}, Lme/grishka/appkit/imageloader/ViewImageLoader$Target;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v1

    invoke-virtual {v1, p2}, Lme/grishka/appkit/imageloader/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-interface {p0}, Lme/grishka/appkit/imageloader/ViewImageLoader$Target;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v1

    invoke-virtual {v1, p2}, Lme/grishka/appkit/imageloader/ImageCache;->getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p0, v1}, Lme/grishka/appkit/imageloader/ViewImageLoader$Target;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {p0, p1}, Lme/grishka/appkit/imageloader/ViewImageLoader$Target;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    new-instance v0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;-><init>(Lme/grishka/appkit/imageloader/ViewImageLoader$1;)V

    .line 54
    .local v0, "task":Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;
    iput-object p0, v0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->target:Lme/grishka/appkit/imageloader/ViewImageLoader$Target;

    .line 55
    iput-object p2, v0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->url:Ljava/lang/String;

    .line 56
    invoke-static {v0, p3}, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->access$102(Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    iput-boolean p4, v0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->animate:Z

    .line 58
    invoke-interface {p0}, Lme/grishka/appkit/imageloader/ViewImageLoader$Target;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lme/grishka/appkit/R$id;->tag_image_load_task:I

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 59
    invoke-interface {p0}, Lme/grishka/appkit/imageloader/ViewImageLoader$Target;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v1

    invoke-virtual {v1, p2}, Lme/grishka/appkit/imageloader/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool;->enqueueCachedTask(Ljava/lang/Runnable;)V

    .line 64
    :goto_1
    invoke-interface {p0}, Lme/grishka/appkit/imageloader/ViewImageLoader$Target;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lme/grishka/appkit/imageloader/ViewImageLoader$1;

    invoke-direct {v2}, Lme/grishka/appkit/imageloader/ViewImageLoader$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool;->enqueueTask(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public static load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "target"    # Lme/grishka/appkit/imageloader/ViewImageLoader$Target;
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "animate"    # Z

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    return-void
.end method
