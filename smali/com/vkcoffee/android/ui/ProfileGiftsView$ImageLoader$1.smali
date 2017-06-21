.class Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader$1;
.super Ljava/lang/Object;
.source "ProfileGiftsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;

.field final synthetic val$image:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader$1;->this$0:Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader$1;->val$image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader$1;->this$0:Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;->access$200(Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader$1;->val$image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    return-void
.end method
