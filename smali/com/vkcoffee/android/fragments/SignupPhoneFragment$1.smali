.class Lcom/vkcoffee/android/fragments/SignupPhoneFragment$1;
.super Ljava/lang/Object;
.source "SignupPhoneFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 116
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v0, p3}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$202(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;I)I

    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$302(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;Z)Z

    .line 121
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v0, p3}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$400(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;I)V

    .line 122
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
