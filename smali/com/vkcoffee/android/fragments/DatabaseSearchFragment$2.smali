.class Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$2;
.super Ljava/lang/Object;
.source "DatabaseSearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 78
    .local p0, "this":Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$2;, "Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$2;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$2;->this$0:Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 81
    .local p0, "this":Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$2;, "Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$2;"
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$2;->this$0:Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->access$000(Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "item":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$2;->this$0:Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->access$100(Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;)Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$2;->this$0:Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->access$100(Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;)Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$Callback;->onItemSelected(Ljava/lang/Object;)V

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$2;->this$0:Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->dismiss()V

    .line 86
    return-void
.end method
