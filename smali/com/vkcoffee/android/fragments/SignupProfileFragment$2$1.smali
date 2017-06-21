.class Lcom/vkcoffee/android/fragments/SignupProfileFragment$2$1;
.super Ljava/lang/Object;
.source "SignupProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 307
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set thumb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$700(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$700(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1003bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$700(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1003ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
