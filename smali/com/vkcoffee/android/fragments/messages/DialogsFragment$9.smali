.class Lcom/vkcoffee/android/fragments/messages/DialogsFragment$9;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$9;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$9;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->updateQuery(Ljava/lang/String;)V

    .line 1093
    return-void
.end method

.method public onQueryConfirmed(Ljava/lang/String;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 1094
    return-void
.end method

.method public onQuerySubmitted(Ljava/lang/String;)V
    .locals 2
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$9;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$9;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->updateQuery(Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$9;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$9(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Ljava/lang/String;)V

    .line 1101
    :cond_0
    return-void
.end method
