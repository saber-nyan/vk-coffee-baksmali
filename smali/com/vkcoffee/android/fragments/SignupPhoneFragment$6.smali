.class Lcom/vkcoffee/android/fragments/SignupPhoneFragment$6;
.super Ljava/lang/Object;
.source "SignupPhoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 272
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 273
    return-void
.end method
