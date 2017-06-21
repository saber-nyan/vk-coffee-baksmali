.class Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment$2$1;->onImageLoaded(Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/fragments/AudioListFragment$2$1;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment$2$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1;->this$2:Lcom/vkcoffee/android/fragments/AudioListFragment$2$1;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 191
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1;->this$2:Lcom/vkcoffee/android/fragments/AudioListFragment$2$1;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$2$1;)Lcom/vkcoffee/android/fragments/AudioListFragment$2;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$2;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$2(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10015f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 192
    .local v0, "sw":Landroid/widget/ViewFlipper;
    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1$1;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, p0, v0, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1$1;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1;Landroid/widget/ViewFlipper;Landroid/graphics/Bitmap;)V

    .line 196
    const-wide/16 v2, 0x1f4

    .line 192
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    return-void
.end method
