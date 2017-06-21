.class Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2$1;
.super Ljava/lang/Object;
.source "ShitBlockPostDisplayItem.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;

.field final synthetic val$a:Lcom/vkcoffee/android/attachments/ShitAttachment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;Landroid/view/View;Lcom/vkcoffee/android/attachments/ShitAttachment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2$1;->this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2$1;->val$a:Lcom/vkcoffee/android/attachments/ShitAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2$1;->this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2$1;->val$a:Lcom/vkcoffee/android/attachments/ShitAttachment;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->access$000(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2$1;->this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2$1;->val$a:Lcom/vkcoffee/android/attachments/ShitAttachment;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->access$100(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    goto :goto_0

    .line 189
    :pswitch_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2$1;->this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->access$200(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/content/Context;)V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
