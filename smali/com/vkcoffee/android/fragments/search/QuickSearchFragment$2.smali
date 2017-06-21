.class Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "QuickSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$2;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 132
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$2;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 133
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 134
    return-void
.end method
