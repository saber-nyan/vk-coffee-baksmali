.class Lcom/vkcoffee/android/ui/NetworkImageView$1$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/NetworkImageView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/NetworkImageView$1;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/NetworkImageView$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/NetworkImageView$1;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkcoffee/android/ui/NetworkImageView$1$1;->this$1:Lcom/vkcoffee/android/ui/NetworkImageView$1;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/NetworkImageView$1$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NetworkImageView$1$1;->this$1:Lcom/vkcoffee/android/ui/NetworkImageView$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/NetworkImageView$1;->this$0:Lcom/vkcoffee/android/ui/NetworkImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/NetworkImageView$1$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    return-void
.end method
