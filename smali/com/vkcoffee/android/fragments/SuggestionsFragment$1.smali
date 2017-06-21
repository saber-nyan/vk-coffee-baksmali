.class Lcom/vkcoffee/android/fragments/SuggestionsFragment$1;
.super Ljava/lang/Object;
.source "SuggestionsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
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
    .line 83
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p3, p4, p5, v1}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->onItemClick(IJLjava/lang/Object;)V

    .line 84
    return-void
.end method
