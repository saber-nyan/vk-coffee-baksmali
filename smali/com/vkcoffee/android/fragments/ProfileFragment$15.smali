.class Lcom/vkcoffee/android/fragments/ProfileFragment$15;
.super Lcom/vkcoffee/android/fragments/ProfileFragment$ParametrizedTarget;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->updateCounters()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final synthetic val$var19:Landroid/widget/FrameLayout;

.field private final synthetic val$var24:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Ljava/lang/Object;Landroid/widget/FrameLayout;Landroid/graphics/drawable/LayerDrawable;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/Object;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$15;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$15;->val$var19:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$15;->val$var24:Landroid/graphics/drawable/LayerDrawable;

    .line 2651
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/ProfileFragment$ParametrizedTarget;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$15;->val$var19:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "var1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2656
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$15;->param:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2657
    .local v1, "var3":I
    const/4 v0, 0x0

    .line 2658
    .local v0, "var2":B
    packed-switch v1, :pswitch_data_0

    .line 2669
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$15;->val$var24:Landroid/graphics/drawable/LayerDrawable;

    new-instance v3, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-direct {v3, p1, v4, v0}, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 2670
    return-void

    .line 2660
    :pswitch_0
    const/4 v0, 0x5

    .line 2661
    goto :goto_0

    .line 2663
    :pswitch_1
    const/4 v0, 0x2

    .line 2664
    goto :goto_0

    .line 2666
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 2658
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2671
    return-void
.end method
