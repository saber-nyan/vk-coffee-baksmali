.class Lcom/vkcoffee/android/ui/SearchViewWrapper$5;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/SearchViewWrapper;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

.field final synthetic val$act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$5;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$5;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 162
    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$5;->val$act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "focus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 164
    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$5;->val$act:Landroid/app/Activity;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 165
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 168
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$5;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$400(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 169
    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$5;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$200(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;->onQuerySubmitted(Ljava/lang/String;)V

    .line 170
    const/4 v2, 0x1

    return v2
.end method
