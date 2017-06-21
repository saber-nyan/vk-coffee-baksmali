.class Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8$1;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ShitBlockPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8$1;->this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8$1;->this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8$1;->this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8$1;->this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;->val$a:Lcom/vkcoffee/android/attachments/ShitAttachment;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->access$400(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    .line 449
    return-void
.end method
