.class Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;
.super Ljava/lang/Thread;
.source "StickersBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/stickers/StickersBackground$Background;->loadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/StickersBackground$Background;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/StickersBackground$Background;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/StickersBackground$Background;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;->this$0:Lcom/vkcoffee/android/stickers/StickersBackground$Background;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 163
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;->this$0:Lcom/vkcoffee/android/stickers/StickersBackground$Background;

    invoke-static {v2}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->access$000(Lcom/vkcoffee/android/stickers/StickersBackground$Background;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;->this$0:Lcom/vkcoffee/android/stickers/StickersBackground$Background;

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->access$100(Lcom/vkcoffee/android/stickers/StickersBackground$Background;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, "image":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->access$300()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/stickers/StickersBackground$Background$1$1;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/stickers/StickersBackground$Background$1$1;-><init>(Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method
