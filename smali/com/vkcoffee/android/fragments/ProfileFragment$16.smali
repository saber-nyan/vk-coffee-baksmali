.class Lcom/vkcoffee/android/fragments/ProfileFragment$16;
.super Lcom/vkcoffee/android/fragments/ProfileFragment$ParametrizedTarget;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->generateTiledLayerDrawable(Ljava/util/List;Landroid/view/View;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/ProfileFragment$ParametrizedTarget",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final synthetic val$fl:Landroid/view/View;

.field private final synthetic val$ld:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Ljava/lang/Integer;Landroid/graphics/drawable/LayerDrawable;Landroid/view/View;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/Integer;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$16;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$16;->val$ld:Landroid/graphics/drawable/LayerDrawable;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$16;->val$fl:Landroid/view/View;

    .line 3751
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/ProfileFragment$ParametrizedTarget;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 3780
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$16;->val$fl:Landroid/view/View;

    return-object v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3756
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$16;->param:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3757
    .local v1, "idx":I
    if-eqz v1, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 3758
    :cond_0
    const/4 v0, 0x0

    .line 3759
    .local v0, "corners":I
    packed-switch v1, :pswitch_data_0

    .line 3773
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$16;->val$ld:Landroid/graphics/drawable/LayerDrawable;

    new-instance v3, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-direct {v3, p1, v4, v0}, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 3777
    .end local v0    # "corners":I
    :goto_1
    return-void

    .line 3761
    .restart local v0    # "corners":I
    :pswitch_1
    const/4 v0, 0x1

    .line 3762
    goto :goto_0

    .line 3764
    :pswitch_2
    const/4 v0, 0x2

    .line 3765
    goto :goto_0

    .line 3767
    :pswitch_3
    const/4 v0, 0x4

    .line 3768
    goto :goto_0

    .line 3770
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 3776
    .end local v0    # "corners":I
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$16;->val$ld:Landroid/graphics/drawable/LayerDrawable;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    .line 3759
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3753
    return-void
.end method
