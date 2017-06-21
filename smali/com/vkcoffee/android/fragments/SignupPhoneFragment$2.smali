.class Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;
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
    .line 142
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 145
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$300(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 146
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$302(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;Z)Z

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$500(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f1003b7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "+"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "code":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 153
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v7, v1}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$600(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "c":I
    const/4 v3, 0x0

    .line 155
    .local v3, "cut":I
    const/4 v6, 0x1

    .line 156
    .local v6, "select":Z
    const/4 v7, -0x1

    if-ne v0, v7, :cond_3

    const-string/jumbo v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_3

    .line 157
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 158
    add-int/lit8 v3, v3, 0x1

    .line 159
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$600(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;Ljava/lang/String;)I

    move-result v0

    .line 160
    const/4 v7, -0x1

    if-eq v0, v7, :cond_2

    .line 165
    :cond_3
    const-string/jumbo v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, -0x1

    if-eq v0, v7, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$700(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v8, v7, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$700(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v8, v7, :cond_5

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$700(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 166
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_8

    .line 167
    const/4 v6, 0x0

    .line 173
    :cond_5
    :goto_1
    if-eqz v6, :cond_0

    .line 174
    if-lez v3, :cond_6

    .line 175
    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "codePart":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "numberPart":Ljava/lang/String;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$500(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f1003b8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "num":Ljava/lang/String;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$500(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f1003b7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$500(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f1003b8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$500(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f1003b8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 181
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$500(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f1003b8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 183
    .end local v2    # "codePart":Ljava/lang/String;
    .end local v4    # "num":Ljava/lang/String;
    .end local v5    # "numberPart":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v7, v0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$202(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;I)I

    .line 184
    const-string/jumbo v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$700(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v8, v7, :cond_7

    .line 185
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$902(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;Z)Z

    .line 187
    :cond_7
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$500(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f1003b5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 169
    :cond_8
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    const-string/jumbo v8, "US"

    invoke-static {v7, v8}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$800(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;Ljava/lang/String;)I

    move-result v0

    .line 170
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    goto/16 :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "_s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 193
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "_s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const v4, 0x7f1003b7

    .line 197
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "s":Ljava/lang/String;
    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$500(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$500(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 202
    :cond_0
    return-void
.end method
