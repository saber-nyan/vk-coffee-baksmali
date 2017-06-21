.class Lcom/vkcoffee/android/ui/SearchViewWrapper$8;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/SearchViewWrapper;->onCreateOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

.field final synthetic val$menu:Landroid/view/Menu;

.field final synthetic val$search:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->val$menu:Landroid/view/Menu;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->val$search:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 265
    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v2, v4}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$502(Lcom/vkcoffee/android/ui/SearchViewWrapper;Z)Z

    .line 266
    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v2, v5}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$802(Lcom/vkcoffee/android/ui/SearchViewWrapper;Z)Z

    .line 267
    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$600(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$600(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;->onViewExpansionStateChanged(Z)V

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$000(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 271
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$400(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 272
    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->clear()V

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->val$menu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 274
    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->val$menu:Landroid/view/Menu;

    invoke-interface {v2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->val$search:Landroid/view/MenuItem;

    if-ne v2, v3, :cond_1

    .line 273
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->val$menu:Landroid/view/Menu;

    invoke-interface {v2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$700(Lcom/vkcoffee/android/ui/SearchViewWrapper;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 279
    :cond_2
    return v5
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 240
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1, v3}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$502(Lcom/vkcoffee/android/ui/SearchViewWrapper;Z)Z

    .line 241
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$600(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$600(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;->onViewExpansionStateChanged(Z)V

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$400(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 245
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$400(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/ui/SearchViewWrapper$8$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/ui/SearchViewWrapper$8$1;-><init>(Lcom/vkcoffee/android/ui/SearchViewWrapper$8;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 252
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->val$menu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v2

    new-array v2, v2, [Z

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$702(Lcom/vkcoffee/android/ui/SearchViewWrapper;[Z)[Z

    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->val$menu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->val$menu:Landroid/view/Menu;

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->val$search:Landroid/view/MenuItem;

    if-ne v1, v2, :cond_1

    .line 253
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$700(Lcom/vkcoffee/android/ui/SearchViewWrapper;)[Z

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->val$menu:Landroid/view/Menu;

    invoke-interface {v2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 258
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->val$menu:Landroid/view/Menu;

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 260
    :cond_2
    return v3
.end method
