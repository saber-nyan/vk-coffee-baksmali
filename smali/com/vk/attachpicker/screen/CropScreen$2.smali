.class Lcom/vk/attachpicker/screen/CropScreen$2;
.super Ljava/lang/Object;
.source "CropScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/CropScreen;->animateIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/CropScreen;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/CropScreen;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/CropScreen;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/vk/attachpicker/screen/CropScreen$2;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/CropScreen$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 249
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen$2;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/CropScreen;->access$200(Lcom/vk/attachpicker/screen/CropScreen;)Lcom/vk/attachpicker/crop/CropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/CropImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 251
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen$2;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-virtual {v1, v6}, Lcom/vk/attachpicker/screen/CropScreen;->setControlsEnabled(Z)V

    .line 252
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen$2;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/CropScreen;->access$200(Lcom/vk/attachpicker/screen/CropScreen;)Lcom/vk/attachpicker/crop/CropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/CropImageView;->disableAll()V

    .line 254
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 255
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen$2;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/CropScreen;->access$200(Lcom/vk/attachpicker/screen/CropScreen;)Lcom/vk/attachpicker/crop/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/vk/attachpicker/crop/CropImageView;->setAlpha(F)V

    .line 256
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen$2;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/CropScreen;->access$300(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen$2;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/CropScreen;->access$300(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 257
    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen$2;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    .line 258
    invoke-static {v2}, Lcom/vk/attachpicker/screen/CropScreen;->access$200(Lcom/vk/attachpicker/screen/CropScreen;)Lcom/vk/attachpicker/crop/CropImageView;

    move-result-object v2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v2}, Lcom/vk/attachpicker/util/AnimationUtils;->accelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen$2;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    .line 259
    invoke-static {v2}, Lcom/vk/attachpicker/screen/CropScreen;->access$300(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/view/View;

    move-result-object v2

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v5, [F

    iget-object v5, p0, Lcom/vk/attachpicker/screen/CropScreen$2;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-static {v5}, Lcom/vk/attachpicker/screen/CropScreen;->access$300(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    aput v7, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v2}, Lcom/vk/attachpicker/util/AnimationUtils;->decelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 257
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 261
    const-wide/16 v2, 0xaf

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 262
    new-instance v1, Lcom/vk/attachpicker/screen/CropScreen$2$1;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/screen/CropScreen$2$1;-><init>(Lcom/vk/attachpicker/screen/CropScreen$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 271
    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 272
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 274
    return v6

    .line 258
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
