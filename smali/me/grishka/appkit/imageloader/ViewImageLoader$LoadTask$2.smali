.class Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$2;
.super Ljava/lang/Object;
.source "ViewImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    .prologue
    .line 152
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$2;->this$0:Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    iput-object p2, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$2;->this$0:Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->access$300(Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$2;->this$0:Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->target:Lme/grishka/appkit/imageloader/ViewImageLoader$Target;

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lme/grishka/appkit/imageloader/ViewImageLoader$Target;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$2;->this$0:Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    iget-boolean v0, v0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->animate:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$2;->this$0:Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->target:Lme/grishka/appkit/imageloader/ViewImageLoader$Target;

    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ViewImageLoader$Target;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 159
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$2;->this$0:Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->target:Lme/grishka/appkit/imageloader/ViewImageLoader$Target;

    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ViewImageLoader$Target;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
