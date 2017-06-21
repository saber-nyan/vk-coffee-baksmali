.class Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$1;
.super Ljava/lang/Object;
.source "DatabaseSearchFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;

    .prologue
    .line 59
    .local p0, "this":Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$1;, "Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$1;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$1;->this$0:Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "ed"    # Landroid/text/Editable;

    .prologue
    .line 62
    .local p0, "this":Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$1;, "Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$1;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$1;->this$0:Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->access$000(Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;)Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 69
    .local p0, "this":Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$1;, "Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$1;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 75
    .local p0, "this":Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$1;, "Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$1;"
    return-void
.end method
