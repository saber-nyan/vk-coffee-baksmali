.class Lcom/vkcoffee/android/stickers/StickersBackground$Background$1$1;
.super Ljava/lang/Object;
.source "StickersBackground.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;

.field final synthetic val$image:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background$1$1;->this$1:Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;

    iput-object p2, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background$1$1;->val$image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background$1$1;->this$1:Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;->this$0:Lcom/vkcoffee/android/stickers/StickersBackground$Background;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background$1$1;->val$image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background$1$1;->this$1:Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;->this$0:Lcom/vkcoffee/android/stickers/StickersBackground$Background;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->access$202(Lcom/vkcoffee/android/stickers/StickersBackground$Background;Z)Z

    .line 169
    return-void
.end method
