.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$21;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$21;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 3162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 3164
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enableMessEncr"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$21;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$59(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3165
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$21;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$60(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    .line 3172
    :goto_0
    return v3

    .line 3167
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$21;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$59(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3168
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$21;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$61(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    goto :goto_0

    .line 3171
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$21;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u042f \u0431\u044b \u043c\u043e\u0433 \u0448\u0438\u0444\u0440\u043e\u0432\u0430\u0442\u044c \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u044c\u043a\u0438, \u043d\u043e \u0412\u044b \u043c\u0435\u043d\u044f \u0432\u044b\u043a\u043b\u044e\u0447\u0438\u043b\u0438 :("

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
