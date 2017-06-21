.class Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;
.super Ljava/lang/Object;
.source "ShitBlockPostDisplayItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/ShitAttachment;

    .line 172
    .local v0, "a":Lcom/vkcoffee/android/attachments/ShitAttachment;
    new-instance v1, Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 173
    .local v1, "pm":Landroid/support/v7/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f080266

    invoke-interface {v2, v5, v5, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 174
    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x7f080435

    invoke-interface {v2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 175
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v2, v2, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v3, "ads_debug"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x2

    const-string/jumbo v4, "ads_debug"

    invoke-interface {v2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 178
    :cond_0
    new-instance v2, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2$1;-><init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;Landroid/view/View;Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 195
    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 196
    return-void
.end method
