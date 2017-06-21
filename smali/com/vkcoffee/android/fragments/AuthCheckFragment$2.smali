.class Lcom/vkcoffee/android/fragments/AuthCheckFragment$2;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "AuthCheckFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AuthCheckFragment;->resendCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AuthCheckFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/AuthCheckFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->access$400(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 249
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->access$500(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 250
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->access$400(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 242
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->access$400(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0800a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->access$500(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 244
    return-void
.end method
