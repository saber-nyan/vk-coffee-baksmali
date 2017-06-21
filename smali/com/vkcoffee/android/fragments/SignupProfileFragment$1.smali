.class Lcom/vkcoffee/android/fragments/SignupProfileFragment$1;
.super Ljava/lang/Object;
.source "SignupProfileFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SignupProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

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
    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$000(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$000(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkcoffee/android/functions/VoidF0;->f()V

    .line 103
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
