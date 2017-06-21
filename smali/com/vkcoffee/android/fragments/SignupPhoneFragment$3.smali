.class Lcom/vkcoffee/android/fragments/SignupPhoneFragment$3;
.super Ljava/lang/Object;
.source "SignupPhoneFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 204
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    const v7, 0x7f1003b5

    const/4 v6, 0x3

    .line 207
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$200(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$700(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$200(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    iget-object v1, v4, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->isoCode:Ljava/lang/String;

    .line 211
    .local v1, "code":Ljava/lang/String;
    const-string/jumbo v4, "US"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "CA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 214
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "ccode":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$1000(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 216
    .local v2, "isCanada":Z
    if-eqz v2, :cond_3

    const-string/jumbo v4, "CA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 217
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$500(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    const-string/jumbo v6, "CA"

    invoke-static {v5, v6}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$800(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 219
    :cond_3
    if-nez v2, :cond_0

    const-string/jumbo v4, "US"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 220
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$500(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    const-string/jumbo v6, "US"

    invoke-static {v5, v6}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$800(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "_s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 228
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "_s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 233
    return-void
.end method
