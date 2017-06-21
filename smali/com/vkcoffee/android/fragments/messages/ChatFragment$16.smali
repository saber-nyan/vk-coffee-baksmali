.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$16;
.super Landroid/widget/LinearLayout;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$16;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 2949
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .prologue
    .line 2951
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2952
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$16;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$39(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/stickers/KeyboardPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2953
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$16;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$39(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/stickers/KeyboardPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->notifyLayoutHasChanged()V

    .line 2956
    :cond_0
    return-void
.end method
