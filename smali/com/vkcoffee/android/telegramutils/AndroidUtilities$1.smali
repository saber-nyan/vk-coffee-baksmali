.class Lcom/vkcoffee/android/telegramutils/AndroidUtilities$1;
.super Lcom/vkcoffee/android/telegramutils/AnimatorListenerAdapterProxy;
.source "AndroidUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->shakeView(Landroid/view/View;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$num:I

.field private final synthetic val$view:Landroid/view/View;

.field private final synthetic val$x:F


# direct methods
.method constructor <init>(Landroid/view/View;IF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities$1;->val$num:I

    iput p3, p0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities$1;->val$x:F

    .line 943
    invoke-direct {p0}, Lcom/vkcoffee/android/telegramutils/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 946
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities$1;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities$1;->val$num:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities$1;->val$num:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    .line 947
    return-void

    .line 946
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities$1;->val$x:F

    neg-float v0, v0

    goto :goto_0
.end method
