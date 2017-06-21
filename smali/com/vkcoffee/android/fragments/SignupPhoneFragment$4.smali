.class Lcom/vkcoffee/android/fragments/SignupPhoneFragment$4;
.super Ljava/lang/Object;
.source "SignupPhoneFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 251
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$1100(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$1100(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkcoffee/android/functions/VoidF0;->f()V

    .line 257
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
