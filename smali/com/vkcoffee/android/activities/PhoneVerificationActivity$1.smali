.class Lcom/vkcoffee/android/activities/PhoneVerificationActivity$1;
.super Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;
.source "PhoneVerificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/activities/PhoneVerificationActivity;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$1;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public invalidateSelf()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->invalidateSelf()V

    .line 73
    iget-object v1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$1;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/ActionBarHacks;->getActionBar(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "abv":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 77
    :cond_0
    return-void
.end method
