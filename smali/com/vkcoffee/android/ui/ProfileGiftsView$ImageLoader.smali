.class Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;
.super Ljava/lang/Thread;
.source "ProfileGiftsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/ProfileGiftsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageLoader"
.end annotation


# instance fields
.field private final mImage:Landroid/widget/ImageView;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ThreadGroup;Lcom/vkcoffee/android/api/models/GiftItem;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "item"    # Lcom/vkcoffee/android/api/models/GiftItem;
    .param p3, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ImageLoader#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/vkcoffee/android/api/models/GiftItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p3}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 169
    .local v0, "width":I
    const/16 v1, 0x30

    if-ge v0, v1, :cond_0

    iget-object v1, p2, Lcom/vkcoffee/android/api/models/GiftItem;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget-object v1, v1, Lcom/vkcoffee/android/api/models/Gift;->thumb_48:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;->mUrl:Ljava/lang/String;

    .line 170
    iput-object p3, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;->mImage:Landroid/widget/ImageView;

    .line 171
    return-void

    .line 169
    :cond_0
    const/16 v1, 0x60

    if-ge v0, v1, :cond_1

    iget-object v1, p2, Lcom/vkcoffee/android/api/models/GiftItem;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget-object v1, v1, Lcom/vkcoffee/android/api/models/Gift;->thumb_96:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lcom/vkcoffee/android/api/models/GiftItem;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget-object v1, v1, Lcom/vkcoffee/android/api/models/Gift;->thumb_256:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .local v0, "image":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;->mImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader$1;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader$1;-><init>(Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 187
    .end local v0    # "image":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method
