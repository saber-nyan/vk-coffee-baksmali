.class Lcom/vkcoffee/android/AudioPlayerActivity$23$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$23;->onImageLoaded(Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;

.field private final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$23;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1;->val$bmp:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1;->val$force:Z

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/AudioPlayerActivity$23$1;)Lcom/vkcoffee/android/AudioPlayerActivity$23;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 926
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity$23;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$23;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$19(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 927
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/vkcoffee/android/CoverBgDrawable;

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Lcom/vkcoffee/android/CoverBgDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 928
    .local v0, "bd":Lcom/vkcoffee/android/CoverBgDrawable;
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity$23;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$23;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$19(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 929
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/CoverBgDrawable;->fadeIn(Landroid/graphics/drawable/Drawable;)V

    .line 930
    iget-boolean v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1;->val$force:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity$23;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$23;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$20(Lcom/vkcoffee/android/AudioPlayerActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity$23;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$23;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$21(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 931
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity$23;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$23;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$21(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100195

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 932
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_1

    .line 933
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity$23;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$23;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$4(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 935
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_3

    .line 936
    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/AudioPlayerActivity$23$1$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$23$1$1;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$23$1;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 949
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 954
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_2
    :goto_0
    return-void

    .line 951
    .restart local v2    # "iv":Landroid/widget/ImageView;
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity$23;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$23;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$22(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    goto :goto_0
.end method
