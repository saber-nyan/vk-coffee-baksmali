.class final Lcom/vk/attachpicker/widget/EditButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/widget/EditButton;->createImageChangeSet(Landroid/widget/ImageView;Landroid/widget/ImageView;I)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$icon1:Landroid/widget/ImageView;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Landroid/widget/ImageView;I)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/vk/attachpicker/widget/EditButton$2;->val$icon1:Landroid/widget/ImageView;

    iput p2, p0, Lcom/vk/attachpicker/widget/EditButton$2;->val$resId:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    .line 177
    iget-object v0, p0, Lcom/vk/attachpicker/widget/EditButton$2;->val$icon1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget v0, p0, Lcom/vk/attachpicker/widget/EditButton$2;->val$resId:I

    const v1, 0x7f0202b1

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/vk/attachpicker/widget/EditButton$2;->val$icon1:Landroid/widget/ImageView;

    iget v1, p0, Lcom/vk/attachpicker/widget/EditButton$2;->val$resId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    iget-object v0, p0, Lcom/vk/attachpicker/widget/EditButton$2;->val$icon1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/vk/attachpicker/widget/EditButton$2;->val$icon1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 182
    iget-object v0, p0, Lcom/vk/attachpicker/widget/EditButton$2;->val$icon1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 183
    iget-object v0, p0, Lcom/vk/attachpicker/widget/EditButton$2;->val$icon1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 185
    iget-object v0, p0, Lcom/vk/attachpicker/widget/EditButton$2;->val$icon1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    :cond_0
    return-void
.end method
