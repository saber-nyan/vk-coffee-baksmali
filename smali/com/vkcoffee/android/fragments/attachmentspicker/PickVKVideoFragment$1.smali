.class Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$1;
.super Ljava/lang/Object;
.source "PickVKVideoFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

.field final synthetic val$searchFragment:Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$1;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$1;->val$searchFragment:Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 137
    return-void
.end method

.method public onQueryConfirmed(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$1;->val$searchFragment:Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->setQuery(Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$1;->val$searchFragment:Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->reset()V

    goto :goto_0
.end method

.method public onQuerySubmitted(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 132
    return-void
.end method
