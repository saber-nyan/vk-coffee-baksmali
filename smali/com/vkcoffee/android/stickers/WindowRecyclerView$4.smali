.class Lcom/vkcoffee/android/stickers/WindowRecyclerView$4;
.super Ljava/lang/Object;
.source "WindowRecyclerView.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ViewImageLoader$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/stickers/WindowRecyclerView;->loadSticker(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/WindowRecyclerView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$4;->this$0:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$4;->this$0:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->access$1000(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 286
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$4;->this$0:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->access$1100(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$4;->this$0:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->access$1000(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$4;->this$0:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->access$1000(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$4;->this$0:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->access$1200(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 291
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$4;->this$0:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->access$1000(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 292
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$4;->this$0:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->access$1000(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 293
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$4;->this$0:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->access$1200(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 294
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$4;->this$0:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->access$1000(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    return-void
.end method
