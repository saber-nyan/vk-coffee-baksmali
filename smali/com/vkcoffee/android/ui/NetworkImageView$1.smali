.class Lcom/vkcoffee/android/ui/NetworkImageView$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/NetworkImageView;->load(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/NetworkImageView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/NetworkImageView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/NetworkImageView;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vkcoffee/android/ui/NetworkImageView$1;->this$0:Lcom/vkcoffee/android/ui/NetworkImageView;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/NetworkImageView$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 33
    iget-object v1, p0, Lcom/vkcoffee/android/ui/NetworkImageView$1;->this$0:Lcom/vkcoffee/android/ui/NetworkImageView;

    new-instance v2, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    invoke-direct {v2}, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;-><init>()V

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/NetworkImageView;->access$002(Lcom/vkcoffee/android/ui/NetworkImageView;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;)Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    .line 34
    iget-object v1, p0, Lcom/vkcoffee/android/ui/NetworkImageView$1;->this$0:Lcom/vkcoffee/android/ui/NetworkImageView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/NetworkImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/NetworkImageView$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/NetworkImageView$1;->this$0:Lcom/vkcoffee/android/ui/NetworkImageView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/NetworkImageView;->access$000(Lcom/vkcoffee/android/ui/NetworkImageView;)Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v5, v4}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/NetworkImageView$1;->this$0:Lcom/vkcoffee/android/ui/NetworkImageView;

    invoke-static {v1, v5}, Lcom/vkcoffee/android/ui/NetworkImageView;->access$002(Lcom/vkcoffee/android/ui/NetworkImageView;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;)Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    .line 36
    iget-object v1, p0, Lcom/vkcoffee/android/ui/NetworkImageView$1;->this$0:Lcom/vkcoffee/android/ui/NetworkImageView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/NetworkImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/vkcoffee/android/ui/NetworkImageView$1$1;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/ui/NetworkImageView$1$1;-><init>(Lcom/vkcoffee/android/ui/NetworkImageView$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method
