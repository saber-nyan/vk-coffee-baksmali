.class Lcom/vkcoffee/android/fragments/NewsSearchFragment$3;
.super Lcom/vkcoffee/android/ui/SearchViewWrapper;
.source "NewsSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/NewsSearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/NewsSearchFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/NewsSearchFragment;Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/NewsSearchFragment;
    .param p2, "act"    # Landroid/app/Activity;
    .param p3, "listener"    # Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsSearchFragment$3;->this$0:Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    invoke-direct {p0, p2, p3}, Lcom/vkcoffee/android/ui/SearchViewWrapper;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;)V

    return-void
.end method


# virtual methods
.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setExpanded(Z)V

    .line 130
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsSearchFragment$3;->this$0:Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsSearchFragment$3;->this$0:Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 133
    :cond_0
    return-void
.end method
