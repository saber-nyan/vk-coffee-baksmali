.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$7;
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$7;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 186
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 187
    .local v3, "i2":I
    invoke-static {}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$10()Ljava/util/List;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 188
    .local v4, "show":Z
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$7;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10037b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "findViewById":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 190
    const/4 v2, 0x0

    .line 194
    .local v2, "i":I
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$7;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10037c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 196
    .local v1, "findViewById2":Landroid/view/View;
    if-nez v4, :cond_0

    .line 197
    const/16 v3, 0x8

    .line 199
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 200
    return-void

    .line 192
    .end local v1    # "findViewById2":Landroid/view/View;
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x8

    .restart local v2    # "i":I
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
    .line 203
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
