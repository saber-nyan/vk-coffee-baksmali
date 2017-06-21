.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$3;
.super Ljava/lang/Object;
.source "ProfileEditFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileEditFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$3;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, "z":Z
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$3;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$3;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v3, v4}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Z)V

    .line 161
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$3;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v3, v4}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$3(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V

    .line 154
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$3;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$4(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/data/database/Country;

    .line 155
    .local v1, "c":Lcom/vkcoffee/android/data/database/Country;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$3;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$5(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$3;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$5(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/TextView;

    move-result-object v0

    .line 157
    .local v0, "access$400":Landroid/widget/TextView;
    iget v3, v1, Lcom/vkcoffee/android/data/database/Country;->id:I

    if-lez v3, :cond_1

    .line 158
    const/4 v2, 0x1

    .line 160
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
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
    .line 164
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
