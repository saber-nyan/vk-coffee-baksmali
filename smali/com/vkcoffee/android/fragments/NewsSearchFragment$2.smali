.class Lcom/vkcoffee/android/fragments/NewsSearchFragment$2;
.super Ljava/lang/Object;
.source "NewsSearchFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;


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
.method constructor <init>(Lcom/vkcoffee/android/fragments/NewsSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsSearchFragment$2;->this$0:Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 125
    return-void
.end method

.method public onQueryConfirmed(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsSearchFragment$2;->this$0:Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/NewsSearchFragment;->access$300(Lcom/vkcoffee/android/fragments/NewsSearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsSearchFragment$2;->this$0:Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/NewsSearchFragment;->access$302(Lcom/vkcoffee/android/fragments/NewsSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsSearchFragment$2;->this$0:Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/NewsSearchFragment;->access$400(Lcom/vkcoffee/android/fragments/NewsSearchFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsSearchFragment$2;->this$0:Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/NewsSearchFragment;->access$100(Lcom/vkcoffee/android/fragments/NewsSearchFragment;)V

    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsSearchFragment$2;->this$0:Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/NewsSearchFragment;->reload()V

    .line 115
    :cond_0
    return-void
.end method

.method public onQuerySubmitted(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/NewsSearchFragment$2;->onQueryConfirmed(Ljava/lang/String;)V

    .line 120
    return-void
.end method
